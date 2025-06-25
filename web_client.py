# /// script
# dependencies = [
#   "fastmcp",
#   "httpx",
#   "logging",
#   "langchain_mcp_adapters",
#   "langgraph",
#   "langchain_ollama",
#   "typer",
#   "fastapi",
#   "uvicorn",
#   "langchain",
#   "pydantic",
# ]
# ///

"""
Copyright (c) 2025 zin mcp client developer(s) (https://github.com/zinja-coder/zin-mcp-client)
See the file 'LICENSE' for copying permission
"""

import json
import httpx
import logging 
import uvicorn 

from typing import List
from pydantic import BaseModel
from contextlib import AsyncExitStack
from contextlib import asynccontextmanager
from fastapi import FastAPI, HTTPException
from fastapi.staticfiles import StaticFiles
from fastapi.responses import HTMLResponse
from fastapi.middleware.cors import CORSMiddleware
from mcp import ClientSession
from mcp.client.stdio import stdio_client, StdioServerParameters
from langchain_mcp_adapters.tools import load_mcp_tools
from langgraph.prebuilt import create_react_agent
from langchain_ollama import ChatOllama

# Setup Logging
logging.basicConfig(level=logging.INFO)
logger = logging.getLogger(__name__)

# Global variable to store config path
CONFIG_PATH = "mcp_config.json"

@asynccontextmanager
async def lifespan(app: FastAPI):
    # start
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

# Global client instance - will be initialized with CONFIG_PATH 
# TO DO Provide option to configure the path
client = None

# Serve static files
app.mount("/static", StaticFiles(directory="static"), name="static")
app.mount("/css", StaticFiles(directory="static/css"), name="css")
app.mount("/js", StaticFiles(directory="static/js"), name="js")

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
    def validate_to_json(cls, value):
        if isinstance(value, str):
            value = json.loads(value)
        return value
    
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
        
        logger.info(f"Zin Web MCP Client initialized with config from {config_path}")
        
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
        
    async def initialize_servers(self, server_names: List [str] = None, force_reinit: bool = False) -> bool:
        # Initialize or reinitialize servers with optional cleanup
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
        logger.info(f"Running interaction with query: {query}")
        if not self.agent:
            raise HTTPException(status_code=400, detail="Agent not initialized")
        
        try:
            input_data = {"messages": query}
            result = await self.agent.ainvoke(input_data)
            
            # Extract response content
            if isinstance(result, dict) and "messages" in result:
                msgs = result.get("messages", [])
                # Look for the last non-empty AIMessage
                for m in reversed(msgs):
                    if hasattr(m, "__class__") and m.__class__.__name__ == "AIMessage":
                        content = getattr(m, "content", "").strip()
                        if content:
                            return content
                    
                # Fall back to tool messages
                for m in reversed(msgs):
                    if hasattr(m, "__class__") and m.__class__.__name__ == "ToolMessage":
                        content = getattr(m, "content", "").strip()
                        if content:
                            return content
                        
                return "No response content received from LLM"
            else:
                return str(result)
        
        except Exception as e:
            logger.error(f"Error during interaction: {str(e)}")
            if "does not support tools" in str(e):
                raise HTTPException(status_code=400, detail="This model does not support tool calling")
            else:
                raise HTTPException(status_code=500, detail=f"Error during interaction: {str(e)}")
        
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
        # Clean up existing sessions, optionally keeping only specified servers
        logger.info("Cleaning up existing MCP server sessions")
        
        if server_names_to_keep is None:
            # Close all sessions
            server_to_remove = list(self.sessions.keys())
        else:
            # Close only sessions not in the keep list
            servers_to_remove = [name for name in self.sessions.keys() if name not in server_names_to_keep]
        try:  
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
        except UnboundLocalError:
            # this error will be produced when user reloads the web page and re initializes the server so ignore
            pass
                    
        # Only close the exit stack if removing all servers
        if server_names_to_keep is None or len(servers_to_remove) == len(self.sessions):
            try:
                await self._exit_stack.aclose()
            except Exception as e:
                logger.error(f"Error closing exit stack: {str(e)}")
            finally:
                self._exit_stack = AsyncExitStack()
        
    def reset_agent(self):
        # Reset the agent to None
        logger.info("Resetting agent")
        self.agent = None
    
    async def close(self):
        logger.info("Closing all MCP server connections")
        try:
            await self._exit_stack.aclose()
        except Exception as e:
            logger.error(f"Error during cleanup: {str(e)}")
            
# Routes
@app.get("/", response_class=HTMLResponse)
async def get_homepage():
    # Serve the main HTML file
    try:
        with open("static/index.html", "r", encoding="utf-8") as f:
            return HTMLResponse(content=f.read())
    except FileNotFoundError:
        raise HTTPException(status_code=404, detail="index.html not found")

@app.get("/api/models")
async def get_models():
    models = await client.get_ollama_models()
    return [ModelInfo(name=model) for model in models]

@app.post("/api/initialize-llm")
async def initialize_llm(request: dict):
    model = request.get("model")
    if not model:
        raise HTTPException(status_code=400, detail="Model name is required")
    
    success = await client.initialize_llm(model)
    if not success:
        raise HTTPException(status_code=500, detail="Failed to initialize LLM")

    return {"status": "success", "message": f"LLM to initialized with model: {model}"}

@app.get("/api/available-servers")
async def get_available_servers():
    # Get list of available MCP Servers from config
    servers = list(client.config.get("mcpServers", {}).keys())
    return {"servers": servers}

@app.post("/api/create-agent")
async def create_agent():
    success = await client.create_agent()
    if not success:
        raise HTTPException(status_code=500, detail="Failed to create agent")
    return {"status": "success", "message": "Agent created successfully"}

@app.post("/api/initialize-servers")
async def initialize_servers_endpoint(request: ServerSelectionRequest = None):
    # Initialize or reinitialize MCP Servers
    server_names = None
    force_reinit = False
    
    if request:
        server_names = request.server_names
        # If servers are already running, force reinitialization
        force_reinit = bool(client.sessions)
        
    success = await client.initialize_servers(server_names, force_reinit)
    if not success:
        action = "reinitialize" if force_reinit else "initialize"
        raise HTTPException(status_code=500, detail=f"Failed to {action} selected MCP servers")
    
    selected_servers = server_names or list(client.config.get("mcpServers", {}).keys())
    action = "reinitialized" if force_reinit else "initialized"
    
    return {
        "status": "success",
        "message": f"MCP servers {action}: {', '.join(selected_servers)}",
        "initialized_servers": selected_servers,
        "action": action
    }
    
@app.post("/api/query")
async def process_query(request: QueryRequest):
    response = await client.run_interaction(request.query)
    return {"response": response}

@app.get("/api/servers")
async def get_servers():
    return client.get_servers_info()

@app.get("/api/tools")
async def get_tools():
    return client.get_tools_info()

@app.get("/api/status")
async def get_system_status():
    # Get current system status
    return {
        "llm_initialized": client.llm is not None,
        "selected_model": client.selected_model,
        "agent_created": client.agent is not None,
        "active_servers": list(client.sessions.keys()),
        "total_tools": sum(len(tools) for tools in client.tools_by_server.values())
    }

if __name__ == "__main__":
    uvicorn.run(app)