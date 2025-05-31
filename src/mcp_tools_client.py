import json
import httpx
import logging

from typing import List
from contextlib import AsyncExitStack
from rich.panel import Panel
from rich.markdown import Markdown
from rich.json import JSON

from mcp import ClientSession
from mcp.client.stdio import stdio_client, StdioServerParameters
from langchain_mcp_adapters.tools import load_mcp_tools
from langgraph.prebuilt import create_react_agent
from langchain_ollama import ChatOllama

from src.logger import Logger

class MCPToolsClient:
    def __init__(self, console, config_path: str, debug_mode: bool = False):
        self.console = console
        self._print = lambda *args, **kwargs: self.console.print(*args, **kwargs) if self.console else None

        self.config_path = config_path
        self.config = self._load_config()
        self.sessions = {}
        self.tools_by_server = {}
        self.llm = None
        self.agent = None
        self.debug_mode = debug_mode

        self.logger = Logger(console=console, debug_mode=debug_mode)
        self.log = self.logger.logger
        self.server_loggers = {}
        self._exit_stack = AsyncExitStack()

        self.log.debug(f"MCPToolsClient initialized with config from {config_path}")
        self.log.debug(f"Debug Mode: {debug_mode}")

    def _load_config(self) -> dict:
        try:
            with open(self.config_path, "r") as f:
                return json.load(f)
        except FileNotFoundError:
            self._print(f"[yellow]MCP Server Configuration file is not found at {self.config_path}[/yellow]")
            return []

    async def get_ollama_models(self) -> List[str]:
        self.log.debug("Attempting to fetch ollama models")
        try:
            async with httpx.AsyncClient() as client:
                response = await client.get("http://127.0.0.1:11434/api/tags")
                data = response.json()
                if self.debug_mode and self.console:
                    self._print(Panel(
                        JSON(json.dumps(data, indent=2)),
                        title="[bold cyan]Ollama API Response[/bold cyan]",
                        border_style="blue"
                    ))
                models = [model["name"] for model in data.get("models", [])]
                return models
        except (httpx.ConnectError, httpx.RequestError) as e:
            self.log.error(f"Failed to connect to Ollama API: {str(e)}")
            self._print("[bold red]Error: Cannot connect to Ollama API.[/bold red]")
            return []

    def _get_server_logger(self, server_name: str) -> logging.Logger:
        if server_name not in self.server_loggers:
            self.server_loggers[server_name] = self.logger.get_server_logger(server_name)
        return self.server_loggers[server_name]

    async def initialize_servers(self, server_names: List[str] = None) -> bool:
        if not self.config.get("mcpServers"):
            self._print("[bold red]No MCP Servers configured.[/bold red]")
            return False

        servers = self.config["mcpServers"]
        server_names = server_names or list(servers.keys())

        self.log.debug(f"Initializing Servers: {', '.join(server_names)}")
        initialized_servers = 0
        for server_name in server_names:
            if server_name not in servers:
                self._print(f"[bold yellow]Warning: Server '{server_name}' not found in config.[/bold yellow]")
                continue

            server_config = servers[server_name]
            command = server_config.get("command")
            args = server_config.get("args", [])

            server_log = self._get_server_logger(server_name)
            self._print(f"[bold blue]Initialing {server_name}..[/bold blue]")
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
                self._print(f"[bold green] -> {server_name} initialized with {len(tools)} tools[/bold green]")
            except Exception as e:
                self.log.error(f"Error initializing {server_name}: {str(e)}", exc_info=True)
                self._print(f"[bold red]Error Initializing {server_name}: {e}[/bold red]")

        return initialized_servers > 0

    async def initialize_llm(self, model_name: str) -> bool:
        try:
            self.llm = ChatOllama(model=model_name)
            if self.debug_mode and self.console:
                llm_info = {
                    "model": model_name,
                    "type": type(self.llm).__name__,
                    "parameters": getattr(self.llm, "model_kwargs", {})
                }
                self._print(Panel(
                    JSON(json.dumps(llm_info, indent=2)),
                    title="[bold cyan]LLM Configuration[/bold cyan]",
                    border_style="magenta"
                ))
            return True
        except Exception as e:
            self.log.error(f"Error initializing LLM: {str(e)}", exc_info=True)
            self._print(f"[bold red]Error initializing LLM: {e}[/bold red]")
            return False

    async def create_agent(self) -> bool:
        if not self.llm:
            self._print("[bold red]LLM not initialized.[/bold red]")
            return False

        all_tools = [tool for tools in self.tools_by_server.values() for tool in tools]
        if not all_tools:
            self._print("[bold red]No Tools available[/bold red]")
            return False

        try:
            self.agent = create_react_agent(self.llm, all_tools)
            if self.debug_mode and self.console:
                tool_names = [tool.name for tool in all_tools]
                self._print(Panel(
                    "\n".join(f"-> {name}" for name in tool_names),
                    title="[bold cyan]Agent Tools[/bold cyan]",
                    border_style="green"
                ))
            self._print(f"[bold green] Agent Created with {len(all_tools)} tools.[/bold green]")
            return True
        except Exception as e:
            self.log.error(f"Error creating agent: {str(e)}", exc_info=True)
            return False

    async def run_interaction(self, query: str):
        if not self.agent:
            self._print("[bold red] Agent not initialized.[/bold red]")
            return
        self._print(Panel(f"[bold cyan]Sending: {query}", title="Query", border_style="cyan") if self.console else f"Query: {query}")

        try:
            input_data = {"messages": query}
            result = await self.agent.ainvoke(input_data)

            if isinstance(result, dict) and "messages" in result:
                msgs = result.get("messages", [])
                useful = None
                for m in reversed(msgs):
                    if hasattr(m, "__class__") and m.__class__.__name__ == "AIMessage":
                        content = getattr(m, "content", "").strip()
                        if content:
                            useful = content
                            break
                if not useful:
                    useful = str(result)
            else:
                useful = str(result)

            if self.console:
                self._print(Panel(Markdown(useful), title="Response", border_style="green", padding=(1, 2)))
        except Exception as e:
            self._print(f"[bold red]Error during interaction: {e}[/bold red]")

    async def close(self):
        await self._exit_stack.aclose()
        self._print("[blue]All MCP Server Connection closed[/blue]")