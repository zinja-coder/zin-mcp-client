# /// script
# dependencies = [
#   "fastmcp",
#   "httpx",
#   "logging",
#   "langchain_mcp_adapters",
#   "langgraph",
#   "langchain_ollama",
#   "rich",
#   "typer",
#   "prompt_toolkit",
#   "fastapi",
#   "uvicorn",
#   "langchain",
#   "pydantic",
#   "python-multipart",
#   "aiofiles",
#   "python-json-logger"
# ]
# ///

"""
Zin MCP Client - FastAPI Backend
Copyright (c) 2025 Zin MCP Client Developer(s)
"""

import json
import httpx
import logging
import asyncio
import uvicorn
from typing import List, Dict, Optional, AsyncGenerator
from contextlib import AsyncExitStack
from fastapi import FastAPI, HTTPException, WebSocket, WebSocketDisconnect
from fastapi.staticfiles import StaticFiles
from fastapi.responses import HTMLResponse, StreamingResponse, JSONResponse
from pydantic import BaseModel
from contextlib import asynccontextmanager
import time
import uuid
from fastapi.middleware.cors import CORSMiddleware


from mcp import ClientSession
from mcp.client.stdio import stdio_client, StdioServerParameters
from langchain_mcp_adapters.tools import load_mcp_tools
from langgraph.prebuilt import create_react_agent
from langchain_ollama import ChatOllama

# Setup logging
logging.basicConfig(level=logging.INFO)
logger = logging.getLogger(__name__)

# Global variable to store config path
CONFIG_PATH = "mcp_config.json"

@asynccontextmanager
async def lifespan(app: FastAPI):
    # Startup
    global client
    client = WebMCPClient(CONFIG_PATH)
    logger.info(f"Application started with config: {CONFIG_PATH}")
    
    yield
    
    # Shutdown
    await client.close()

# Initialize FastAPI app with lifespan
app = FastAPI(title="Zin MCP Client", version="1.0.0", lifespan=lifespan)

app.add_middleware(
    CORSMiddleware,
    allow_origins=["*"], 
    allow_credentials=True,
    allow_methods=["*"],
    allow_headers=["*"],
)

# Global client instance - will be initialized with proper config path
client = None

# Pydantic models for API
class QueryRequest(BaseModel):
    query: str

class ServerInfo(BaseModel):
    name: str
    status: str
    tools_count: int

class ToolInfo(BaseModel):
    name: str
    description: str
    server: str

class ModelInfo(BaseModel):
    name: str

class ServerSelectionRequest(BaseModel):
    server_names: List[str]
    
    @classmethod
    def __get_validators__(cls):
        yield cls.validate_to_json

    @classmethod
    def validate_to_json(cls, value):
        if isinstance(value, str):
            value = json.loads(value)
        return value

# OpenAI-compatible models
class ChatMessage(BaseModel):
    role: str
    content: str

class ChatCompletionRequest(BaseModel):
    model: str
    messages: List[ChatMessage]
    stream: bool = False
    temperature: Optional[float] = None
    max_tokens: Optional[int] = None

class ChatCompletionChoice(BaseModel):
    index: int
    message: ChatMessage
    finish_reason: str

class ChatCompletionUsage(BaseModel):
    prompt_tokens: int
    completion_tokens: int
    total_tokens: int

class ChatCompletionResponse(BaseModel):
    id: str
    object: str = "chat.completion"
    created: int
    model: str
    choices: List[ChatCompletionChoice]
    usage: ChatCompletionUsage

class OpenAIModel(BaseModel):
    id: str
    object: str = "model"
    created: int
    owned_by: str = "ollama"

# Web MCP Client class
class WebMCPClient:
    def __init__(self, config_path: str):
        self.config_path = config_path
        self.config = self._load_config()
        self.sessions = {}
        self.tools_by_server = {}
        self.llm = None
        self.agent = None
        self.selected_model = None
        self._exit_stack = AsyncExitStack()
        
        logger.info(f"WebMCPClient initialized with config from {config_path}")

    def _load_config(self) -> dict:
        try:
            with open(self.config_path, "r") as f:
                return json.load(f)
        except FileNotFoundError:
            logger.warning(f"Config file not found at {self.config_path}")
            return {"mcpServers": {}}

    async def get_ollama_models(self) -> List[str]:
        logger.info("Fetching Ollama models")
        try:
            async with httpx.AsyncClient() as client:
                response = await client.get("http://127.0.0.1:11434/api/tags")
                data = response.json()
                models = [model["name"] for model in data.get("models", [])]
                logger.info(f"Found {len(models)} Ollama models")
                return models
        except (httpx.ConnectError, httpx.RequestError) as e:
            logger.error(f"Failed to connect to Ollama API: {str(e)}")
            return []

    async def initialize_servers(self, server_names: List[str] = None, force_reinit: bool = False) -> bool:
        """Initialize or reinitialize servers with optional cleanup"""
        if not self.config.get("mcpServers"):
            logger.error("No MCP Servers configured")
            return False

        servers = self.config["mcpServers"]
        server_names = server_names or list(servers.keys())

        # Check if reinitialization is needed
        current_servers = set(self.sessions.keys())
        requested_servers = set(server_names)
    
        if not force_reinit and current_servers == requested_servers:
            logger.info("Servers already initialized with same configuration")
            return True

        # Clean up existing sessions if needed
        if current_servers or force_reinit:
            logger.info("Cleaning up existing sessions for reinitialization")
            await self.cleanup_sessions()
            self.reset_agent()

        logger.info(f"Initializing Servers: {', '.join(server_names)}")
        initialized_servers = 0
    
        for server_name in server_names:
            if server_name not in servers:
                logger.warning(f"Server '{server_name}' not found in config")
                continue

            server_config = servers[server_name]
            command = server_config.get("command")
            args = server_config.get("args", [])

            logger.info(f"Initializing {server_name}")
            server_params = StdioServerParameters(command=command, args=args)

            try:
                server_stack = AsyncExitStack()
                reader, writer = await server_stack.enter_async_context(stdio_client(server_params))
                session = await server_stack.enter_async_context(ClientSession(reader, writer))
                await session.initialize()
                await self._exit_stack.enter_async_context(server_stack)

                self.sessions[server_name] = session
                tools = await load_mcp_tools(session)
                self.tools_by_server[server_name] = tools

                initialized_servers += 1
                logger.info(f"Server {server_name} initialized with {len(tools)} tools")
        
            except Exception as e:
                logger.error(f"Error initializing {server_name}: {str(e)}")
        
        return initialized_servers > 0

    async def initialize_llm(self, model_name: str) -> bool:
        logger.info(f"Initializing LLM with model: {model_name}")
        try:
            self.llm = ChatOllama(model=model_name)
            self.selected_model = model_name
            logger.info("LLM initialized successfully")
            return True
        except Exception as e:
            logger.error(f"Error initializing LLM: {str(e)}")
            return False

    async def create_agent(self) -> bool:
        logger.info("Creating agent with tools and LLM")
        if not self.llm:
            logger.error("LLM not initialized")
            return False
        
        all_tools = [tool for tools in self.tools_by_server.values() for tool in tools]
        if not all_tools:
            logger.error("No Tools available")
            return False
        
        try:
            self.agent = create_react_agent(self.llm, all_tools)
            logger.info(f"Agent created successfully with {len(all_tools)} tools")
            return True
        except Exception as e:
            logger.error(f"Error creating agent: {str(e)}")
            return False

    async def run_interaction(self, query: str) -> str:
        logger.info(f"[run_interaction] Query: {query}")
    
        if not self.agent:
            logger.warning("Agent not initialized!")
            return "⚠️ Agent is not initialized. Please check your model and tools."

        try:
            input_data = {"messages": query}
            result = await self.agent.ainvoke(input_data)
            logger.info(f"[run_interaction] Agent result: {result}")

            # === Try extracting from LangGraph message list ===
            if isinstance(result, dict) and "messages" in result:
                msgs = result.get("messages", [])
                logger.info(f"[run_interaction] Extracted {len(msgs)} messages")

                for m in reversed(msgs):
                    if m.__class__.__name__ == "AIMessage":
                        content = getattr(m, "content", "").strip()
                        if content:
                            return content

                for m in reversed(msgs):
                    if m.__class__.__name__ == "ToolMessage":
                        content = getattr(m, "content", "").strip()
                        if content:
                            return content

                logger.warning("Messages found but no AIMessage or ToolMessage with content")
                return "⚠️ Agent did not return any message content."

            # === Fallback: convert raw result to string ===
            return str(result).strip() or "⚠️ Agent returned an empty response."

        except Exception as e:
            logger.error(f"[run_interaction] Error: {str(e)}")
            if "does not support tools" in str(e):
                return "⚠️ This model does not support tool calling."
            return f"❌ Unexpected error during interaction: {str(e)}"

    def get_servers_info(self) -> List[ServerInfo]:
        servers_info = []
        for server_name in self.sessions:
            tools_count = len(self.tools_by_server.get(server_name, []))
            servers_info.append(ServerInfo(
                name=server_name,
                status="Connected",
                tools_count=tools_count
            ))
        return servers_info

    def get_tools_info(self) -> List[ToolInfo]:
        tools_info = []
        for server_name, tools in self.tools_by_server.items():
            for tool in tools:
                tools_info.append(ToolInfo(
                    name=tool.name,
                    description=tool.description,
                    server=server_name
                ))
        return tools_info

    async def cleanup_sessions(self, server_names_to_keep: List[str] = None):
        """Clean up existing sessions, optionally keeping only specified servers"""
        logger.info("Cleaning up existing MCP server sessions")
    
        if server_names_to_keep is None:
            # Close all sessions
            servers_to_remove = list(self.sessions.keys())
        else:
            # Close only sessions not in the keep list
            servers_to_remove = [name for name in self.sessions.keys() if name not in server_names_to_keep]
    
        for server_name in servers_to_remove:
            if server_name in self.sessions:
                try:
                    # Simply remove from our tracking - let the exit stack handle cleanup
                    del self.sessions[server_name]
                    if server_name in self.tools_by_server:
                        del self.tools_by_server[server_name]
                    logger.info(f"Cleaned up session for server: {server_name}")
                except Exception as e:
                    logger.error(f"Error cleaning up session for {server_name}: {str(e)}")
    
        # Only close the exit stack if we're removing all servers
        if server_names_to_keep is None or len(servers_to_remove) == len(self.sessions):
            try:
                await self._exit_stack.aclose()
            except Exception as e:
                logger.error(f"Error closing exit stack: {str(e)}")
            finally:
                self._exit_stack = AsyncExitStack()
    
    def reset_agent(self):
        """Reset the agent to None"""
        logger.info("Resetting agent")
        self.agent = None
    
    async def close(self):
        logger.info("Closing all MCP server connections")
        try:
            await self._exit_stack.aclose()
        except Exception as e:
            logger.error(f"Error during cleanup: {str(e)}")

async def non_stream_chat_completion(user_message: str, request: ChatCompletionRequest):
    """Handle non-streaming chat completion"""
    try:
        logger.info(f"Processing non-stream query: {user_message}")
        response = await client.run_interaction(user_message)
        logger.info(f"LLM response: {response}")
        
        # Create proper OpenAI-compatible response
        completion_response = ChatCompletionResponse(
            id=f"chatcmpl-{uuid.uuid4().hex[:8]}",
            created=int(time.time()),
            model=request.model,
            choices=[
                ChatCompletionChoice(
                    index=0,
                    message=ChatMessage(role="assistant", content=response),
                    finish_reason="stop"
                )
            ],
            usage=ChatCompletionUsage(
                prompt_tokens=len(user_message.split()),
                completion_tokens=len(response.split()),
                total_tokens=len(user_message.split()) + len(response.split())
            )
        )
        
        logger.info(f"Sending response: {completion_response}")
        return completion_response
        
    except Exception as e:
        logger.error(f"Error in non_stream_chat_completion: {str(e)}")
        raise HTTPException(status_code=500, detail=str(e))

async def stream_chat_completion(user_message: str, request: ChatCompletionRequest) -> AsyncGenerator[str, None]:
    """Continuously stream fake data while LLM is working, then stream real response"""

    logger.info(f"[stream_chat_completion] Streaming with LLM fallback: {user_message}")

    completion_id = f"chatcmpl-{uuid.uuid4().hex[:8]}"
    created_time = int(time.time())

    # 1. Send initial role chunk
    initial_chunk = {
        "id": completion_id,
        "object": "chat.completion.chunk",
        "created": created_time,
        "model": request.model,
        "choices": [{
            "index": 0,
            "delta": {"role": "assistant"},
            "finish_reason": None
        }]
    }
    yield f"data: {json.dumps(initial_chunk)}\n\n"
    await asyncio.sleep(0.01)

    # 2. Start background task to get real response
    response_task = asyncio.create_task(client.run_interaction(user_message))

    # 3. While waiting, send filler tokens every few ms
    dot_count = 0
    while not response_task.done():
        filler_char = "\u200b" 
        filler_chunk = {
            "id": completion_id,
            "object": "chat.completion.chunk",
            "created": created_time,
            "model": request.model,
            "choices": [{
                "index": 0,
                "delta": {"content": filler_char},
                "finish_reason": None
            }]
        }
        yield f"data: {json.dumps(filler_chunk)}\n\n"
        dot_count += 1
        await asyncio.sleep(3)  # adjustable filler rate

    # 4. Get the real response
    try:
        response = await response_task
        logger.info(f"[stream_chat_completion] Got LLM response: {response}")
    except Exception as e:
        logger.error(f"[stream_chat_completion] LLM error: {str(e)}")
        response = f"❌ LLM error: {str(e)}"

    # 5. Stream actual content
    for char in response:
        content_chunk = {
            "id": completion_id,
            "object": "chat.completion.chunk",
            "created": created_time,
            "model": request.model,
            "choices": [{
                "index": 0,
                "delta": {"content": char},
                "finish_reason": None
            }]
        }
        yield f"data: {json.dumps(content_chunk)}\n\n"
        await asyncio.sleep(0.005)

    # 6. Final chunk
    final_chunk = {
        "id": completion_id,
        "object": "chat.completion.chunk",
        "created": created_time,
        "model": request.model,
        "choices": [{
            "index": 0,
            "delta": {},
            "finish_reason": "stop"
        }]
    }
    yield f"data: {json.dumps(final_chunk)}\n\n"
    yield "data: [DONE]\n\n"


async def auto_initialize_system(model_name: str):
    """Auto-initialize system with default settings"""
    try:
        logger.info(f"Auto-initializing system with model: {model_name}")
        
        # Initialize LLM
        llm_success = await client.initialize_llm(model_name)
        if not llm_success:
            raise Exception("Failed to initialize LLM")
        
        # Initialize all available servers
        available_servers = list(client.config.get("mcpServers", {}).keys())
        logger.info(f"Available servers: {available_servers}")
        
        if available_servers:
            servers_success = await client.initialize_servers(available_servers)
            if not servers_success:
                logger.warning("No servers were successfully initialized")
        
        # Create agent
        agent_success = await client.create_agent()
        if not agent_success:
            raise Exception("Failed to create agent")
        
        logger.info(f"System auto-initialized successfully with model {model_name}")
        
    except Exception as e:
        logger.error(f"Auto-initialization failed: {str(e)}")
        raise HTTPException(status_code=500, detail=f"System initialization failed: {str(e)}")   

# Routes
@app.get("/", response_class=HTMLResponse)
async def get_homepage():
    """Serve the main HTML file"""
    try:
        with open("static/index.html", "r", encoding="utf-8") as f:
            return HTMLResponse(content=f.read())
    except FileNotFoundError:
        raise HTTPException(status_code=404, detail="index.html not found")

@app.get("/v1/models")
async def get_openai_models():
    """OpenAI-compatible models endpoint"""
    models = await client.get_ollama_models()
    return {
        "object": "list",
        "data": [
            OpenAIModel(
                id=model,
                created=int(time.time()),
                owned_by="ollama"
            ).model_dump() for model in models
        ]
    }

@app.get("/test-stream")
async def test_stream():
    """Test endpoint to verify streaming format"""
    def generate():
        test_message = "Hello, this is a test streaming response!"
        completion_id = f"chatcmpl-{uuid.uuid4().hex[:8]}"
        created_time = int(time.time())
        
        # Initial chunk with role
        initial_chunk = {
            "id": completion_id,
            "object": "chat.completion.chunk",
            "created": created_time,
            "model": "test-model",
            "choices": [{
                "index": 0,
                "delta": {"role": "assistant"},
                "finish_reason": None
            }]
        }
        yield f"data: {json.dumps(initial_chunk)}\n\n"
        
        # Content chunks
        for char in test_message:
            chunk_data = {
                "id": completion_id,
                "object": "chat.completion.chunk",
                "created": created_time,
                "model": "test-model",
                "choices": [{
                    "index": 0,
                    "delta": {"content": char},
                    "finish_reason": None
                }]
            }
            yield f"data: {json.dumps(chunk_data)}\n\n"
        
        # Final chunk
        final_chunk = {
            "id": completion_id,
            "object": "chat.completion.chunk",
            "created": created_time,
            "model": "test-model",
            "choices": [{
                "index": 0,
                "delta": {},
                "finish_reason": "stop"
            }]
        }
        yield f"data: {json.dumps(final_chunk)}\n\n"
        yield "data: [DONE]\n\n"
    
    return StreamingResponse(
        generate(),
        media_type="text/event-stream",
        headers={
            "Cache-Control": "no-cache",
            "Connection": "keep-alive",
            "Access-Control-Allow-Origin": "*",
            "X-Accel-Buffering": "no"
        }
    )

@app.post("/v1/chat/completions_test")
async def chat_completions():
    def generate():
        completion_id = f"chatcmpl-{uuid.uuid4().hex[:8]}"
        created = int(time.time())
        model = "mistral"

        # 1. Initial chunk (role only)
        yield f"data: {json.dumps({\
            'id': completion_id,\
            'object': 'chat.completion.chunk',\
            'created': created,\
            'model': model,\
            'choices': [{\
                'index': 0,\
                'delta': {'role': 'assistant'},\
                'finish_reason': None\
            }]\
        })}\n\n"
        time.sleep(0.05)

        # 2. Stream content, character by character
        message = "This is a working test response from mock server."
        for char in message:
            yield f"data: {json.dumps({\
                'id': completion_id,\
                'object': 'chat.completion.chunk',\
                'created': created,\
                'model': model,\
                'choices': [{\
                    'index': 0,\
                    'delta': {'content': char},\
                    'finish_reason': None\
                }]\
            })}\n\n"
            time.sleep(0.01)

        # 3. Final chunk
        yield f"data: {json.dumps({\
            'id': completion_id,\
            'object': 'chat.completion.chunk',\
            'created': created,\
            'model': model,\
            'choices': [{\
                'index': 0,\
                'delta': {},\
                'finish_reason': 'stop'\
            }]\
        })}\n\n"

        # 4. End marker
        yield "data: [DONE]\n\n"

    return StreamingResponse(generate(), media_type="text/event-stream")

@app.post("/v1/chat/completions")
async def create_chat_completion(request: ChatCompletionRequest):
    """OpenAI-compatible chat completions endpoint with exact format for OpenWebUI"""
    
    logger.info(f"Received chat completion request: model={request.model}, stream={request.stream}")
    
    # Initialize system if not already done
    if not client.agent:
        logger.info("Agent not initialized, starting auto-initialization")
        await auto_initialize_system(request.model)
    
    # Extract user message from the most recent user message
    user_message = None
    for msg in reversed(request.messages):
        if msg.role == "user":
            user_message = msg.content
            break
    
    if not user_message:
        raise HTTPException(status_code=400, detail="No user message found")
    
    logger.info(f"Processing user message: {user_message}")
    
    # Check if streaming is requested
    if request.stream:
        logger.info("Returning streaming response")
        return StreamingResponse(
            stream_chat_completion(user_message, request),
            media_type="text/event-stream",
            headers={
                "Cache-Control": "no-cache",
                "Connection": "keep-alive",
                "Access-Control-Allow-Origin": "*", 
                "Access-Control-Allow-Headers": "*",
                "Access-Control-Expose-Headers": "*",
                "X-Accel-Buffering": "no",
                "Transfer-Encoding": "chunked"
            }
        )
    else:
        logger.info("Returning non-streaming response")
        response = await non_stream_chat_completion(user_message, request)
        return JSONResponse(content=response.model_dump())

@app.post("/api/query")
async def process_query(request: QueryRequest):
    response = await client.run_interaction(request.query)
    return {"response": response}

if __name__ == "__main__":
    uvicorn.run(app, host="0.0.0.0", port=8000)