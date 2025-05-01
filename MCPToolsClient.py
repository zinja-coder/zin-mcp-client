
import json
import httpx

from mcp import ClientSession
from mcp.client.stdio import stdio_client, StdioServerParameters
from langchain_mcp_adapters.tools import load_mcp_tools
from langgraph.prebuilt import create_react_agent
from langchain_ollama import ChatOllama

from contextlib import AsyncExitStack
from typing import List
from rich.console import Console
from rich.panel import Panel
from rich.prompt import Pormpt, IntPrompt
from rich.table import Table

# Intializing rich console for eye candy terminal
console = Console() 
app = typer.Typer(help="Zin MCP Client For Bridging Between MCP Servers & Local LLMs", add_completion=False)

# Default MCP Server configuration json file
DEFAULT_CONFIG_PATH = "mcp_config.json"

class MCPToolsClient:
    # initializing various attributes of MCPToolsClient class
    def __init__(self, config_path: str = DEFAULT_CONFIG_PATH):
        self.config = self._load_config()
        self.sessions = {}
        self.tools_by_server = {}
        self.llm = None
        self.agent = None

        # Single exit for all stdio and session contexts
        self._exit_stack = AsyncExitStack()
    
    # method to read and load the mcp server configurations
    def _load_config(self) -> dict:
        try:
            with open(self.config_path, "r") as f:
                return json.load(f)
        except FileNotFoundError:
            console.print(f"[yellow]MCP Server Configuration file is not found at {self.config_path}[/yellow]")
            return []

    # get the local LLM models from ollama
    async def get_ollama_models(self) -> List[str]:
        try:
            async with httpx.AsyncClient() as client:
                response = await client.get("http://localhost:11434/api/tags")
                data = response.json()
                return [model["name"] for model in data.get("models", [])]
        except (httpx.ConnectError, httpx.RequestError):
            console.print("[bold red]Error: Cannot connect to Ollama API.[/bold red]")
            console.print("Make sure Ollama is running on http://localhost:11434")
            return []
        
    # Based on the data available in mcp configuration file, initialize mcp servers
    async def initialize_servers(self, server_names: List[str] = None) -> bool:
        if not self.config.get("mcpServers"):
            console.print("[bold red]No MCP Servers configured.[/bold red]")
            return False
        
        servers = self.config["mcpServers"]
        server_names = server_names or list(servers.keys())

        for server_name in server_names:
            if server_name not in servers:
                console.print(f"[bold yellow]Warning: Server '{server_name}' not found in config[/bold yellow]")
                continue

            server_config = servers[server_name]
            command = server_config.get("command")
            args = server_config.get("args", [])

            console.print(f"[bold blue]Initializing {server_name}...[/bold blue]")
            server_params = StdioServerParameters(command=command, args=args)

            try:
                # enter both contexts into the same exit stack
                reader, writer = await self._exit_stack.enter_async_context(stdio_client(server_params))
                session = await self._exit_stack.enter_async_context(ClientSession(reader, writer))
                await session.initialize()

                self.sessions[server_name] = session
                tools = await load_mcp_tools(session)
                self.tools_by_server[server_name] = tools

                console.print(f"[bold green]-> {server_name} initialized with {len(tools)} tools[/bold green]")
            except Exception as e:
                console.print(f"[bold red]Error Initializing {server_name}: {e}[/bold red]")

        return len(self.sessions) > 0

    # Initialize local llm
    async def initialize_llm(self, model_name: str) -> bool:
        try:
            self.llm = ChatOllama(model=model_name)
            return True
        except Exception as e:
            console.print(f"[bold red]Error initialing LLM: {e}[/bold red]")
            return False
        
    # Create LLM Agent
    async def create_agent(self) -> bool:
        if not self.llm:
            console.print("[bold red]LLM not initialized.[/bold red]")
            return False

        all_tools = [tool for tools in self.tools_by_server.values() for tool in tools]
