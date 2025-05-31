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
#   "uvicorn"
# ]
# ///

"""
Copyright (c) 2025 zin mcp client developer(s) (https://github.com/zinja-coder/zin-mcp-client)
See the file 'LICENSE' for copying permission
"""

import typer
import asyncio
import uvicorn
from fastapi import FastAPI, HTTPException
from fastapi.middleware.cors import CORSMiddleware
from fastapi.responses import FileResponse
from pydantic import BaseModel
from contextlib import asynccontextmanager
from pathlib import Path
import io
import sys

from typing import List, Optional, Dict, Any
from rich.console import Console
from rich.prompt import IntPrompt

from src.mcp_tools_client import MCPToolsClient, MCPResponse
from src.interactive_cli import InteractiveCLI

# Constants
DEFAULT_CONFIG_PATH = 'mcp_config.json'
console = Console()
app = typer.Typer(help="Zin MCP Client", add_completion=False)

# Pydantic models for API
class InitializeRequest(BaseModel):
    config_path: str
    servers: Optional[List[str]] = None
    model: str
    debug: bool = False

class QueryRequest(BaseModel):
    query: str

class WebServerState:
    def __init__(self):
        self.client: Optional[MCPToolsClient] = None
        self.is_initialized = False
        
    async def initialize_client(self, config_path: str, servers: List[str], model: str, debug: bool):
        """Initialize the MCP client for web mode"""
        try:
            # Create a minimal console for logging (won't be used for output)
            null_console = Console(file=io.StringIO(), force_terminal=False)
        
            # Initialize client in web mode
            self.client = MCPToolsClient(
                console=null_console, 
                config_path=config_path, 
                debug_mode=debug,
                web_mode=True  # Enable web-friendly mode
            )
        
            # Get available models and validate
            models = await self.client.get_ollama_models()
            if not models:
                raise Exception("No Ollama models found. Make sure Ollama is running.")
        
            if model not in models:
                model = models[0]  # Use first available model
        
            # Initialize LLM
            if not await self.client.initialize_llm(model):
                raise Exception("Failed to initialize LLM")
        
            # Initialize servers
            success, initialized_servers = await self.client.initialize_servers(servers)
            if not success:
                raise Exception("Failed to initialize any MCP servers")
        
            # Create agent
            if not await self.client.create_agent():
                raise Exception("Failed to create agent")
        
            self.is_initialized = True
            return {
                "status": "success", 
                "model": model, 
                "servers": initialized_servers,
                "message": f"Successfully initialized with {len(initialized_servers)} servers"
            }
        
        except Exception as e:
            if self.client:
                await self.client.close()
            self.client = None
            self.is_initialized = False
            raise e
    
    async def send_query(self, query: str) -> Dict[str, Any]:
        """Send query to MCP client and return structured response"""
        if not self.is_initialized or not self.client:
            raise Exception("Client not initialized")
        
        try:
            # Get structured response from client
            response = await self.client.run_interaction(query)
            
            # Return the response as a dictionary
            return {
                "content": response.content,
                "status": response.status,
                "metadata": response.metadata,
                "query": query
            }
            
        except Exception as e:
            return {
                "content": f"Error processing query: {str(e)}",
                "status": "error",
                "metadata": {"error_type": type(e).__name__},
                "query": query
            }
    
    async def get_server_info(self):
        """Get information about connected servers"""
        if not self.is_initialized or not self.client:
            return {"servers": [], "tools": {}}
        
        return self.client.get_server_info()
    
    async def get_models(self):
        """Get available Ollama models"""
        try:
            if self.client:
                return await self.client.get_ollama_models()
            else:
                # Create temporary client to get models
                null_console = Console(file=io.StringIO(), force_terminal=False)
                temp_client = MCPToolsClient(
                    console=null_console, 
                    config_path="", 
                    debug_mode=False,
                    web_mode=True
                )
                try:
                    models = await temp_client.get_ollama_models()
                    return models
                finally:
                    await temp_client.close()
        except Exception as e:
            print(f"Error getting models: {e}")
            return []
    
    async def close(self):
        """Close the MCP client"""
        if self.client:
            await self.client.close()
        self.client = None
        self.is_initialized = False

# Global state instance
web_state = WebServerState()

@asynccontextmanager
async def lifespan(web_app: FastAPI):
    """Handle application startup and shutdown"""
    yield
    # Cleanup on shutdown
    await web_state.close()

# Create FastAPI app for web server mode
web_app = FastAPI(title="Zin MCP Client Web Server", lifespan=lifespan)

# Add CORS middleware
web_app.add_middleware(
    CORSMiddleware,
    allow_origins=["*"],
    allow_credentials=True,
    allow_methods=["*"],
    allow_headers=["*"],
)

# Web API Routes
@web_app.get("/")
async def serve_web_ui():
    """Serve the web UI HTML file"""
    ui_path = Path("web_ui.html")
    if ui_path.exists():
        return FileResponse(ui_path)
    else:
        raise HTTPException(status_code=404, detail="web_ui.html not found. Please ensure the file exists.")

@web_app.post("/api/initialize")
async def initialize_client(request: InitializeRequest):
    """Initialize the MCP client"""
    try:
        result = await web_state.initialize_client(
            request.config_path, 
            request.servers or [], 
            request.model, 
            request.debug
        )
        return result
    except Exception as e:
        raise HTTPException(status_code=400, detail=str(e))

@web_app.post("/api/query")
async def send_query(request: QueryRequest):
    """Send a query to the MCP client"""
    try:
        response = await web_state.send_query(request.query)
        return response
    except Exception as e:
        raise HTTPException(status_code=400, detail=str(e))

@web_app.get("/api/servers")
async def get_servers():
    """Get server information"""
    try:
        return await web_state.get_server_info()
    except Exception as e:
        raise HTTPException(status_code=400, detail=str(e))

@web_app.get("/api/models")
async def get_models():
    """Get available Ollama models"""
    try:
        models = await web_state.get_models()
        return {"models": models}
    except Exception as e:
        print(f"Error in get_models endpoint: {e}")
        # Return a more detailed error response for debugging
        return {"models": [], "error": str(e)}

@web_app.get("/api/status")
async def get_status():
    """Get client status"""
    return {
        "initialized": web_state.is_initialized,
        "has_client": web_state.client is not None
    }

@web_app.post("/api/close")
async def close_client():
    """Close the MCP client"""
    try:
        await web_state.close()
        return {"status": "closed"}
    except Exception as e:
        raise HTTPException(status_code=400, detail=str(e))

# CLI Commands remain the same
@app.command()
def run(
    config_file_path: str = typer.Option(DEFAULT_CONFIG_PATH, "--config", "-c", help="Path to config file"),
    server: List[str] = typer.Option(None, "--server", "-s", help="Specified servers to initialize (defaults to all)"),
    model: str = typer.Option(None, "--model", "-m", help="Which LLM to use"),
    debug: bool = typer.Option(False, "--debug", "-d", help="Enable verbose debug output"),
    query: str = typer.Option(None, "--query", "-q", help="Run single LLM query and then exit")
):
    """Run MCP client in CLI mode"""
    async def _run():
        # CLI mode uses normal console mode
        client = MCPToolsClient(console=console, config_path=config_file_path, debug_mode=debug, web_mode=False)

        # Get available models
        models = await client.get_ollama_models()
        if models:
            console.print("[green]Available Ollama Models:[/green]")
            for i, m in enumerate(models, 1):
                console.print(f"{i}. {m}")
            
            if model not in models:
                if len(models) == 1:
                    selected_model = models[0]
                    console.print(f"[blue]Using only available model: {selected_model}[/blue]")
                else:
                    console.print("[yellow]Specified model not found or not specified.[/yellow]")
                    local_model_index = IntPrompt.ask("Select model by number", default=1, show_choices=False, show_default=True)
                    selected_model = models[min(local_model_index, len(models)) - 1]
            else:
                selected_model = model
        else:
            console.print("[yellow]No models found. Closing[/yellow]")
            await client.close()
            return

        # Initialize LLM
        console.print(f"[blue]Initializing LLM with model: {selected_model}[/blue]")
        await client.initialize_llm(selected_model)

        # Initialize MCP servers
        success, initialized_servers = await client.initialize_servers(server)
        if success:
            if await client.create_agent():
                if query:
                    # Run single query and exit
                    await client.run_interaction(query)
                    await client.close()
                else:
                    # Start interactive CLI mode
                    interactive_mode = InteractiveCLI(console=console, client=client)
                    await interactive_mode.interactive_cli()
            else:
                console.print("[bold red]Failed to create agent.[/bold red]")
                await client.close()
        else:
            console.print("[bold red]Failed to initialize any MCP servers.[/bold red]")
    
    asyncio.run(_run())

@app.command()
def web(
    host: str = typer.Option("0.0.0.0", "--host", "-h", help="Host to bind the web server"),
    port: int = typer.Option(8000, "--port", "-p", help="Port to bind the web server"),
    reload: bool = typer.Option(False, "--reload", "-r", help="Enable auto-reload for development")
):
    """Run MCP client in web server mode"""
    console.print(f"[green]Starting Zin MCP Client Web Server on {host}:{port}[/green]")
    console.print(f"[blue]Open your browser and go to: http://{host}:{port}[/blue]")
    
    uvicorn.run(
        "zin_mcp_client:web_app",
        host=host,
        port=port,
        reload=reload,
        app_dir="."
    )

if __name__ == "__main__":
    app()