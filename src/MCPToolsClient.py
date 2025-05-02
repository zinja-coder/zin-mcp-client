

import json
import httpx

from typing import List
from contextlib import AsyncExitStack
from rich.console import Console
from rich.panel import Panel
from rich.markdown import Markdown

from mcp import ClientSession
from mcp.client.stdio import stdio_client, StdioServerParameters
from langchain_mcp_adapters.tools import load_mcp_tools
from langgraph.prebuilt import create_react_agent
from langchain_ollama import ChatOllama

# Intializing rich console for eye candy terminal
#console = Console() 
#app = typer.Typer(help="Zin MCP Client For Bridging Between MCP Servers & Local LLMs", add_completion=False)

# Default MCP Server configuration json file
#DEFAULT_CONFIG_PATH = "mcp_config.json"

class MCPToolsClient:
    # initializing various attributes of MCPToolsClient class
    def __init__(self, console: Console, config_path: str):
        self.config_path = config_path
        self.config = self._load_config()
        self.sessions = {}
        self.tools_by_server = {}
        self.llm = None
        self.agent = None
        self.console = console
        

        # Single exit for all stdio and session contexts
        self._exit_stack = AsyncExitStack()
    
    # method to read and load the mcp server configurations
    def _load_config(self) -> dict:
        try:
            with open(self.config_path, "r") as f:
                return json.load(f)
        except FileNotFoundError:
            self.console.print(f"[yellow]MCP Server Configuration file is not found at {self.config_path}[/yellow]")
            return []

    # get the local LLM models from ollama
    async def get_ollama_models(self) -> List[str]:
        try:
            async with httpx.AsyncClient() as client:
                response = await client.get("http://localhost:11434/api/tags")
                data = response.json()
                return [model["name"] for model in data.get("models", [])]
        except (httpx.ConnectError, httpx.RequestError):
            self.console.print("[bold red]Error: Cannot connect to Ollama API.[/bold red]")
            self.console.print("Make sure Ollama is running on http://localhost:11434")
            return []
        
    # Based on the data available in mcp configuration file, initialize mcp servers
    async def initialize_servers(self, server_names: List[str] = None) -> bool:
        if not self.config.get("mcpServers"):
            self.console.print("[bold red]No MCP Servers configured.[/bold red]")
            return False
        
        servers = self.config["mcpServers"]
        server_names = server_names or list(servers.keys())

        for server_name in server_names:
            if server_name not in servers:
                self.console.print(f"[bold yellow]Warning: Server '{server_name}' not found in config[/bold yellow]")
                continue

            server_config = servers[server_name]
            command = server_config.get("command")
            args = server_config.get("args", [])

            self.console.print(f"[bold blue]Initializing {server_name}...[/bold blue]")
            server_params = StdioServerParameters(command=command, args=args)

            try:
                # enter both contexts into the same exit stack
                reader, writer = await self._exit_stack.enter_async_context(stdio_client(server_params))
                session = await self._exit_stack.enter_async_context(ClientSession(reader, writer))
                await session.initialize()

                self.sessions[server_name] = session
                tools = await load_mcp_tools(session)
                self.tools_by_server[server_name] = tools

                self.console.print(f"[bold green]-> {server_name} initialized with {len(tools)} tools[/bold green]")
            except Exception as e:
                self.console.print(f"[bold red]Error Initializing {server_name}: {e}[/bold red]")

        return len(self.sessions) > 0

    # Initialize local llm
    async def initialize_llm(self, model_name: str) -> bool:
        try:
            self.llm = ChatOllama(model=model_name)
            return True
        except Exception as e:
            self.console.print(f"[bold red]Error initialing LLM: {e}[/bold red]")
            return False
        
    # Create LLM Agent
    async def create_agent(self) -> bool:
        if not self.llm:
            self.console.print("[bold red]LLM not initialized.[/bold red]")
            return False

        all_tools = [tool for tools in self.tools_by_server.values() for tool in tools]
        if not all_tools:
            self.console.print("[bold red]No tools available.[/bold red]")
            return False
        
        try:
            self.agent = create_react_agent(self.llm, all_tools)
            self.console.print(f"[bold green]Agent created with {len(all_tools)} tools.[/bold green]")
            return True
        except Exception as e:
            self.console.print(f"[bold red]Error creating agent: {e}[/bold red]")
            return False
    
    # method to run interaction between user and llm via agent with mcp support
    async def run_interaction(self, query: str):
        if not self.agent:
            self.console.print("[bold red] Agent not initialized.[/bold red]")
            return
    
        self.console.print(Panel(f"[bold cyan]Sending: {query}", title="Query", border_style="cyan"))

        try: 
            # aivoke() method will automatically select & execute any matching tools
            with self.console.status("[bold green]Waiting for response from LLM...[/bold green]", spinner="dots"):
                result = await self.agent.ainvoke({"messages": query})
                
            # Improved response handling
            if isinstance(result, dict) and "messages" in result:
                msgs = result.get("messages", [])
                
                # Debug: print the raw messages to understand structure
                #self.console.print("[dim]Debug: Response structure[/dim]")
                #self.console.print(f"[dim]{str(msgs)[:200]}...[/dim]")
                
                useful = None
                
                # look for the last non-empty AIMessage
                for m in reversed(msgs):
                    if hasattr(m, "__class__") and m.__class__.__name__ == "AIMessage":
                        content = getattr(m, "content", "").strip()
                        if content:
                            useful = content
                            break
                
                # if no AIMessage with content, fall back to tool messages
                if not useful:
                    for m in reversed(msgs):
                        if hasattr(m, "__class__") and m.__class__.__name__ == "ToolMessage":
                            content = getattr(m, "content", "").strip()
                            if content:
                                useful = content
                                break
                
                # If still nothing, check if we can extract from metadata
                if not useful and len(msgs) > 0 and hasattr(msgs[0], "response_metadata"):
                    metadata = getattr(msgs[0], "response_metadata", {})
                    self.console.print(f"[yellow]Response metadata: {metadata}[/yellow]")
                
                # Last resort: just use the raw result
                if not useful:
                    useful = "No response content received from LLM. Please try a different model or check Ollama server."
            else:
                useful = str(result)

            # Create a Markdown object from the useful text
            markdown_content = Markdown(useful)
            
            # Create a Panel containing the Markdown object
            response_panel = Panel(
                markdown_content,
                title="Response", 
                border_style="green",
                padding=(1, 2)
            )
            
            # Print the panel with rendered Markdown
            self.console.print(response_panel) 
        
        except Exception as e:
            self.console.print(f"[bold red]Error during interaction: {e}[/bold red]")
            self.console.print(f"[yellow]Error details: {type(e).__name__}: {str(e)}[/yellow]")
            
            # If we have a result, print it raw to help debug
            if 'result' in locals():
                self.console.print(f"[dim]Raw result: {str(result)}...[/dim]")

    # Method to close the interaction with agent gracefully to close the server and all resources
    async def close(self):
        await self._exit_stack.aclose()
        self.console.print("[blue]All MCP server connections closed[/blue]")

    