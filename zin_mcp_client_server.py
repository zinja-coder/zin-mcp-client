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
#   "fastapi"
# ]
# ///

"""
Copyright (c) 2025 zin mcp client developer(s) (https://github.com/zinja-coder/zin-mcp-client)
See the file 'LICENSE' for copying permission
"""

import asyncio
import json
import time
import uuid
from datetime import datetime
from typing import List, Dict, Any, Optional, AsyncGenerator
from contextlib import asynccontextmanager

import uvicorn
from fastapi import FastAPI, HTTPException, Request
from fastapi.responses import StreamingResponse
from fastapi.middleware.cors import CORSMiddleware
from pydantic import BaseModel

from src.mcp_tools_client import MCPToolsClient
from rich.console import Console

# Pydantic models for OpenAI API compatibility
class ChatMessage(BaseModel):
    role: str
    content: str

class ChatCompletionRequest(BaseModel):
    model: str
    messages: List[ChatMessage]
    stream: bool = False
    max_tokens: Optional[int] = None
    temperature: Optional[float] = None
    top_p: Optional[float] = None

class ChatCompletionResponse(BaseModel):
    id: str
    object: str = "chat.completion"
    created: int
    model: str
    choices: List[Dict[str, Any]]
    usage: Dict[str, int]

class ModelInfo(BaseModel):
    id: str
    object: str = "model"
    owned_by: str = "zin-mcp-client"

class ModelsResponse(BaseModel):
    object: str = "list"
    data: List[ModelInfo]

# Global variables
console = Console()
mcp_client: Optional[MCPToolsClient] = None
server_config = {
    "config_path": "mcp_config.json",
    "debug": False,
    "mcp_servers": None,
    "model": None
}

@asynccontextmanager
async def lifespan(app: FastAPI):
    """FastAPI lifespan handler to manage MCP client initialization and cleanup"""
    global mcp_client, server_config
    
    # Startup
    console.print("[bold blue]Starting Zin MCP API Server...[/bold blue]")
    
    try:
        # Initialize MCP client with config
        mcp_client = MCPToolsClient(
            console=console, 
            config_path=server_config["config_path"], 
            debug_mode=server_config["debug"]
        )
        
        # Get available models and initialize with specified or first one
        models = await mcp_client.get_ollama_models()
        if not models:
            console.print("[bold red]No Ollama models found. Make sure Ollama is running.[/bold red]")
            raise RuntimeError("No Ollama models available")
        
        # Select model based on CLI option or default to first available
        if server_config["model"] and server_config["model"] in models:
            selected_model = server_config["model"]
            console.print(f"[green]Using specified model: {selected_model}[/green]")
        else:
            selected_model = models[0]
            if server_config["model"]:
                console.print(f"[yellow]Specified model '{server_config['model']}' not found. Using: {selected_model}[/yellow]")
            else:
                console.print(f"[green]Using default model: {selected_model}[/green]")
        
        await mcp_client.initialize_llm(selected_model)
        
        # Initialize MCP servers (with optional server filter)
        if not await mcp_client.initialize_servers(server_config["mcp_servers"]):
            console.print("[yellow]Warning: No MCP servers initialized[/yellow]")
        else:
            if server_config["mcp_servers"]:
                console.print(f"[green]Initialized specified MCP servers: {server_config['mcp_servers']}[/green]")
            else:
                console.print("[green]Initialized all available MCP servers[/green]")
        
        # Create agent
        if not await mcp_client.create_agent():
            console.print("[yellow]Warning: Agent creation failed[/yellow]")
        
        console.print("[bold green]Zin MCP API Server ready![/bold green]")
        
        yield
        
    except Exception as e:
        console.print(f"[bold red]Failed to initialize MCP client: {e}[/bold red]")
        raise
    
    # Shutdown
    console.print("[blue]Shutting down Zin MCP API Server...[/blue]")
    if mcp_client:
        await mcp_client.close()

# Create FastAPI app with lifespan handler
app = FastAPI(
    title="Zin MCP API Server",
    description="OpenAI-compatible API server with MCP tool support",
    version="1.0.0",
    lifespan=lifespan
)

# Add CORS middleware to handle OPTIONS requests properly
app.add_middleware(
    CORSMiddleware,
    allow_origins=["*"],  # Configure this based on your needs
    allow_credentials=True,
    allow_methods=["*"],
    allow_headers=["*"],
)

@app.options("/{path:path}")
async def handle_options(request: Request, path: str):
    """Handle OPTIONS requests for CORS preflight"""
    return {
        "message": "OK",
        "method": "OPTIONS",
        "path": path,
        "headers": dict(request.headers)
    }

@app.get("/v1/models")
async def list_models() -> ModelsResponse:
    """List available models - OpenAI API compatible"""
    if not mcp_client:
        raise HTTPException(status_code=503, detail="MCP client not initialized")
    
    try:
        ollama_models = await mcp_client.get_ollama_models()
        models = [
            ModelInfo(id=model_name) 
            for model_name in ollama_models
        ]
        
        return ModelsResponse(data=models)
    
    except Exception as e:
        console.print(f"[red]Error listing models: {e}[/red]")
        raise HTTPException(status_code=500, detail=f"Failed to list models: {str(e)}")

@app.post("/v1/chat/completions")
async def chat_completions(request: ChatCompletionRequest):
    """Handle chat completions - OpenAI API compatible"""
    if not mcp_client:
        raise HTTPException(status_code=503, detail="MCP client not initialized")
    
    if not mcp_client.agent:
        raise HTTPException(status_code=503, detail="Agent not initialized")
    
    try:
        # Extract the user's message (typically the last message)
        user_message = ""
        for msg in reversed(request.messages):
            if msg.role == "user":
                user_message = msg.content
                break
        
        if not user_message:
            raise HTTPException(status_code=400, detail="No user message found")
        
        console.print(f"[cyan]Processing request for model: {request.model}[/cyan]")
        console.print(f"[cyan]User message: {user_message}[/cyan]")
        
        if request.stream:
            return StreamingResponse(
                stream_chat_completion(user_message, request),
                media_type="text/plain"
            )
        else:
            return await non_stream_chat_completion(user_message, request)
    
    except Exception as e:
        console.print(f"[red]Error in chat completion: {e}[/red]")
        raise HTTPException(status_code=500, detail=f"Chat completion failed: {str(e)}")

async def non_stream_chat_completion(user_message: str, request: ChatCompletionRequest) -> ChatCompletionResponse:
    """Handle non-streaming chat completion"""
    try:
        # Use MCP client to process the query
        input_data = {"messages": user_message}
        result = await mcp_client.agent.ainvoke(input_data)
        
        # Extract response content
        response_content = extract_response_content(result)
        
        # Create OpenAI-compatible response
        response_id = f"chatcmpl-{uuid.uuid4().hex[:8]}"
        created_timestamp = int(time.time())
        
        return ChatCompletionResponse(
            id=response_id,
            created=created_timestamp,
            model=request.model,
            choices=[{
                "index": 0,
                "message": {
                    "role": "assistant",
                    "content": response_content
                },
                "finish_reason": "stop"
            }],
            usage={
                "prompt_tokens": len(user_message.split()),  # Rough estimate
                "completion_tokens": len(response_content.split()),  # Rough estimate
                "total_tokens": len(user_message.split()) + len(response_content.split())
            }
        )
    
    except Exception as e:
        console.print(f"[red]Error in non-stream completion: {e}[/red]")
        raise HTTPException(status_code=500, detail=str(e))

async def stream_chat_completion(user_message: str, request: ChatCompletionRequest) -> AsyncGenerator[str, None]:
    """Handle streaming chat completion"""
    try:
        # For now, we'll simulate streaming by yielding the complete response
        # In a full implementation, you'd want to stream tokens as they're generated
        input_data = {"messages": user_message}
        result = await mcp_client.agent.ainvoke(input_data)
        
        response_content = extract_response_content(result)
        response_id = f"chatcmpl-{uuid.uuid4().hex[:8]}"
        created_timestamp = int(time.time())
        
        # Simulate streaming by breaking response into chunks
        words = response_content.split()
        chunk_size = max(1, len(words) // 10)  # Break into ~10 chunks
        
        for i in range(0, len(words), chunk_size):
            chunk_words = words[i:i + chunk_size]
            chunk_content = " ".join(chunk_words)
            
            chunk_data = {
                "id": response_id,
                "object": "chat.completion.chunk",
                "created": created_timestamp,
                "model": request.model,
                "choices": [{
                    "index": 0,
                    "delta": {
                        "content": chunk_content + (" " if i + chunk_size < len(words) else "")
                    },
                    "finish_reason": None
                }]
            }
            
            yield f"data: {json.dumps(chunk_data)}\n\n"
            await asyncio.sleep(0.1)  # Small delay to simulate streaming
        
        # Send final chunk
        final_chunk = {
            "id": response_id,
            "object": "chat.completion.chunk", 
            "created": created_timestamp,
            "model": request.model,
            "choices": [{
                "index": 0,
                "delta": {},
                "finish_reason": "stop"
            }]
        }
        
        yield f"data: {json.dumps(final_chunk)}\n\n"
        yield "data: [DONE]\n\n"
        
    except Exception as e:
        console.print(f"[red]Error in stream completion: {e}[/red]")
        error_chunk = {
            "error": {
                "message": str(e),
                "type": "server_error"
            }
        }
        yield f"data: {json.dumps(error_chunk)}\n\n"

def extract_response_content(result: Any) -> str:
    """Extract response content from agent result - reused from mcp_tools_client.py logic"""
    try:
        if isinstance(result, dict) and "messages" in result:
            msgs = result.get("messages", [])
            
            # Look for the last non-empty AIMessage
            for m in reversed(msgs):
                if hasattr(m, "__class__") and m.__class__.__name__ == "AIMessage":
                    content = getattr(m, "content", "").strip()
                    if content:
                        return content
            
            # If no AIMessage with content, fall back to tool messages
            for m in reversed(msgs):
                if hasattr(m, "__class__") and m.__class__.__name__ == "ToolMessage":
                    content = getattr(m, "content", "").strip()
                    if content:
                        return content
        
        # Fallback to string representation
        return str(result)
    
    except Exception as e:
        console.print(f"[yellow]Warning: Error extracting response content: {e}[/yellow]")
        return "Sorry, I encountered an error processing your request."

@app.get("/health")
async def health_check():
    """Health check endpoint"""
    return {
        "status": "healthy",
        "timestamp": datetime.now().isoformat(),
        "mcp_client_initialized": mcp_client is not None,
        "agent_ready": mcp_client.agent is not None if mcp_client else False
    }

@app.get("/mcp/servers")
async def list_mcp_servers():
    """List connected MCP servers - custom endpoint"""
    if not mcp_client:
        raise HTTPException(status_code=503, detail="MCP client not initialized")
    
    servers_info = []
    for server_name in mcp_client.sessions:
        tools_count = len(mcp_client.tools_by_server.get(server_name, []))
        servers_info.append({
            "name": server_name,
            "status": "connected",
            "tools_count": tools_count
        })
    
    return {"servers": servers_info}

@app.get("/mcp/tools")
async def list_mcp_tools():
    """List available MCP tools - custom endpoint"""
    if not mcp_client:
        raise HTTPException(status_code=503, detail="MCP client not initialized")
    
    tools_info = {}
    for server_name, tools in mcp_client.tools_by_server.items():
        tools_info[server_name] = [
            {
                "name": tool.name,
                "description": tool.description
            }
            for tool in tools
        ]
    
    return {"tools": tools_info}

def run_server(
    host: str = "127.0.0.1",
    port: int = 8000,
    config_path: str = "mcp_config.json",
    debug: bool = False,
    mcp_servers: Optional[List[str]] = None,
    model: Optional[str] = None
):
    """Run the API server"""
    global server_config
    
    # Update server config
    server_config.update({
        "config_path": config_path,
        "debug": debug,
        "mcp_servers": mcp_servers,
        "model": model
    })
    
    console.print(f"[bold blue]Starting Zin MCP API Server on {host}:{port}[/bold blue]")
    console.print(f"[blue]Config file: {config_path}[/blue]")
    console.print(f"[blue]Debug mode: {debug}[/blue]")
    if mcp_servers:
        console.print(f"[blue]MCP servers filter: {', '.join(mcp_servers)}[/blue]")
    if model:
        console.print(f"[blue]Target model: {model}[/blue]")
    
    uvicorn.run(
        app,
        host=host,
        port=port,
        log_level="debug" if debug else "info"
    )

if __name__ == "__main__":
    import typer
    
    def main(
        host: str = typer.Option("127.0.0.1", "--host", "-h", help="Host to bind to"),
        port: int = typer.Option(8000, "--port", "-p", help="Port to bind to"), 
        mcp: List[str] = typer.Option(None, "--mcp", help="Specify which MCP servers to initialize (can be used multiple times)"),
        model: str = typer.Option(None, "--model", "-m", help="Which Ollama model to use"),
        config: str = typer.Option("mcp_config.json", "--config", "-c", help="Path to MCP config file"),
        debug: bool = typer.Option(False, "--debug", "-d", help="Enable debug mode")
    ):
        """Run Zin MCP API Server"""
        run_server(
            host=host, 
            port=port, 
            config_path=config, 
            debug=debug, 
            mcp_servers=mcp, 
            model=model
        )
    
    typer.run(main)