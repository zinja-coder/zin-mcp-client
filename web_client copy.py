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
    def __inti__(self, config_path: str):
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
        
    