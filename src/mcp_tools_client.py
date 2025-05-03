"""
Copyright (c) 2025 zin mcp client developer(s) (https://github.com/zinja-coder/zin-mcp-client)
See the file 'LICENSE' for copying permission
"""

import json
import httpx
import logging

from typing import List
from contextlib import AsyncExitStack
from rich.console import Console
from rich.panel import Panel
from rich.markdown import Markdown
from rich.json import JSON

from mcp import ClientSession
from mcp.client.stdio import stdio_client, StdioServerParameters
from langchain_mcp_adapters.tools import load_mcp_tools
from langgraph.prebuilt import create_react_agent
from langchain_ollama import ChatOllama

from src.logger import Logger

# class for MCP Client
class MCPToolsClient: 
    # initializing various attributes of MCPToolsClient class
    def __init__(self, console: Console, config_path: str, debug_mode: bool = False):
        self.config_path = config_path
        self.config = self._load_config()
        self.sessions = {}
        self.tools_by_server = {}
        self.llm = None
        self.agent = None
        self.console = console
        self.debug_mode = debug_mode
        
        # Initialze the logger
        self.logger = Logger(console=console, debug_mode=debug_mode)
        self.log = self.logger.logger

        # server specific loggers
        self.server_loggers = {}

        # Singl exit for all stdio and session contexts
        self._exit_stack = AsyncExitStack()

        self.log.debug(f"MCPToolsClient initialized with config from {config_path}")
        self.log.debug(f"Debug Mode: {debug_mode}")

    # method to read and load the mcp server configuration
    def _load_config(self) -> dict:
        try:
            with open(self.config_path, "r") as f:
                return json.load(f)
        except FileNotFoundError:
            self.console.print(f"[yellow]MCP Server Configuration file is not found at {self.config_path}[/yellow]")
            return []

    # det the local llm models from ollama
    async def get_ollama_models(self) -> List[str]:
        self.log.debug("Attempting to fetch ollama models")
        try:
            async with httpx.AsyncClient() as client:
                self.log.debug("Sending request to Ollama API")
                response = await client.get("http://127.0.0.1:11434/api/tags")
                data = response.json()
                if self.debug_mode:
                    self.console.print(Panel(
                        JSON(json.dumps(data, indent=2)),
                        title="[bold cyan]Ollama API Response[/bold cyan]",
                        border_style="blue"
                    ))
                models = [model["name"] for model in data.get("models", [])]
                self.log.debug(f"Found {len(models)} Ollama models")
                self.log.debug(f"Available models: {', '.join(models)}")
                return models
                # return [model["name"] for model in data.get("models", [])]
        except (httpx.ConnectError, httpx.RequestError) as e:
            self.log.error(f"Failed to connect to Ollama API: {str(e)}")
            self.console.print("[bold red]Error: Cannot connect to Ollama API.[/bold red]\nMake sure Ollama is running and serving on http://127.0.0.1:11434")
            return []
    
    # create a logger for a specific server
    def _get_server_logger(self, server_name: str) -> logging.Logger:
        if server_name not in self.server_loggers:
            self.server_loggers[server_name] = self.logger.get_server_logger(server_name)
        return self.server_loggers[server_name]
    
    # based on the data available in mcp configuration file, initialize mcp servers
    async def initialize_servers(self, server_names: List[str] = None) -> bool:
        if not self.config.get("mcpServers"):
            self.console.print("[bold red]No MCP Servers configured.[/bold red]")
            return False

        servers = self.config["mcpServers"]
        server_names = server_names or list(servers.keys())#list(servers.key())

        self.log.debug(f"Initializing Servers: {', '.join(server_names)}")
        initialized_servers = 0
        for server_name in server_names:
            if server_name not in servers:
                self.console.print(f"[bold yellow]Warning: Server '{server_name}' not found in config.[/bold yellow]")
                continue

            server_config = servers[server_name]
            command = server_config.get("command")
            args = server_config.get("args", [])

            server_log = self._get_server_logger(server_name)
            server_log.debug(f"Initializing Server: {server_name}")
            server_log.debug(f"Command: {command}, Args: {args}")

            self.console.print(f"[bold blue]Initialing {server_name}..[/bold blue]")
            server_params = StdioServerParameters(command=command, args=args)

            try:
                # create a separate exit stack for each server to isolate failures
                server_stack = AsyncExitStack()

                # enter the stdio client context
                self.log.debug(f"Starting stdio client for {server_name}")
                reader, writer = await server_stack.enter_async_context(stdio_client(server_params))

                # Create session with the reader/writer
                self.log.debug(f"Creating client session for {server_name}")
                session = await server_stack.enter_async_context(ClientSession(reader, writer))

                # initialzie the session
                self.log.debug(f"Initializing the session for {server_name}")
                await session.initialize()

                # add the server stack to the main exit stack
                await self._exit_stack.enter_async_context(server_stack)

                # Store session and load tools
                self.sessions[server_name] = session
                self.log.debug(f"Loading MCP tools for {server_name}")
                tools = await load_mcp_tools(session)
                self.tools_by_server[server_name] = tools

                initialized_servers += 1
                self.log.debug(f"Server {server_name} initialized with {len(tools)} tools")
                self.console.print(f"[bold green] -> {server_name} initialized with {len(tools)} tools[/bold green]")
            
            except Exception as e:
                self.log.error(f"Error initializing {server_name}: {str(e)}", exc_info=True)
                self.consol.print(f"[bold red]Error Initializing {server_name}: {e}[/bold red]")
            
        return initialized_servers > 0
    
    # Initialize local llm
    async def initialize_llm(self, model_name: str) -> bool:
        self.log.debug(f"Initializing LLM with model: {model_name}")
        try:
            self.llm = ChatOllama(model=model_name)
            self.log.debug(f"LLM initialized successfully")

            # If in debug mode, log LLM details
            if self.debug_mode:
                llm_info = {
                    "model": model_name,
                    "type": type(self.llm).__name__,
                    "parameters": getattr(self.llm, "model_kwargs", {})
                }
                self.console.print(Panel(
                    JSON(json.dumps(llm_info, indent=2)),
                    title="[bold cyan]LLM Configuration[/bold cyan]",
                    border_style="magenta"
                ))
            return True
        except Exception as e:
            self.log.error(f"Error initializing LLM: {str(e)}", exc_info=True)
            self.console.print(f"[bold red]Error initializing LLM: {e}[/bold red]")
            return False
        
    # Create LLM Agent
    async def create_agent(self) -> bool:
        self.log.debug("Creating agent with tools and LLM")
        if not self.llm:
            self.console.print("[bold red]LLM not initialized.[/bold red]")
            return False
        
        all_tools = [tool for tools in self.tools_by_server.values() for tool in tools]
        if not all_tools:
            self.console.print("[bold red]No Tools available[/bold red]")
            return False
        
        try:
            self.log.debug(f"Creating Re-Act agent with {len(all_tools)} tools")
            self.agent = create_react_agent(self.llm, all_tools)
            
            if self.debug_mode:
                tool_names = [tool.name for tool in all_tools]
                self.console.print(Panel(
                    "\n".join(f"-> {name}" for name in tool_names),
                    title="[bold cyan]Agent Tools[/bold cyan]",
                    border_style="green"
                ))
            self.log.debug(f"Agent Created successfully with {len(all_tools)} tools")
            self.console.print(f"[bold green] Agent Created with {len(all_tools)} tools.[/bold green]")
            return True
        except Exception as e:
            self.log.error(f"Error creating agent: {str(e)}", exc_info=True)
            #self.console.print(f"[bold red]Error creating agent: {e}[/bold red]")
            return False
        
    # Method to run interaction between user and llm via agent with mcp support
    async def run_interaction(self, query: str):
        self.log.debug(f"Running interaction with query: {query}")
        if not self.agent:
            self.console.print("[bold red] Agent not initialized.[/bold red]")
            return 
        self.console.print(Panel(f"[bold cyan]Sending: {query}", title="Query", border_style="cyan"))

        try:
            # prepare the input
            input_data = {"messages": query}
            self.log.debug(f"Input data: {input_data}")
            
            # ainvoke() method will automatically select & execute any matching tools
            with self.console.status("[bold green]Waiting for response from LLM...[/bold green]", spinner="moon"):
                result = await self.agent.ainvoke(input_data)

                # Log the raw result in debug mode and to file
                self.log.debug(f"Raw agent result: {str(result)}")
                if self.debug_mode:
                    self.console.print(Panel(
                        str(result),
                        title="[bold cyan]Raw Agent Response[/bold cyan]",
                        border_style="blue"
                    ))
            
            # handle the response
            if isinstance(result, dict) and "messages" in result:
                msgs = result.get("messages", [])
                
                # Debug
                if self.debug_mode:
                    self.console.print("[cyan]Response Messages Structure:[/cyan]")
                    for i, msg in enumerate(msgs):
                        msg_type = msg.__class__.__name__ if hasattr(msg, "__class__") else type(msg).__name__
                        content = getattr(msg, "content", str(msg))
                        self.console.print(f"[dim]{i}: {msg_type}[/dim]")

                        # Show message metadata if available
                        if hasattr(msg, "additional_kwargs") and msg.additional_kwargs:
                            self.consol.print(Panel(
                                JSON(json.dumps(msg.additional_kwargs, ident=2)),
                                title=f"[bold cyan]Message {i} Metadata/[bold cyan]",
                                board_style="blue"
                            ))
                useful = None

                # Look for the last non-empty AIMessage
                for m in reversed(msgs):
                    if hasattr(m, "__class__") and m.__class__.__name__ == "AIMessage":
                        content = getattr(m, "content", "").strip()
                        if content:
                            useful = content
                            self.log.debug("Found AIMessage content")
                            break
                
                # If no AIMessage with content, fall back to tool messages
                if not useful:
                    for m in reversed(msgs):
                        if hasattr(m, "__class__") and m.__class__.__name__ == "ToolMessage":
                            content = getattr(m, "content", "").strip()
                            if content:
                                useful = content
                                self.log.debug("Found ToolMessage content")
                                break

                # if still nothing, try to extract info from metadata
                if not useful and len(msgs) > 0 and hasattr(msgs[0], "response_metadata"):
                    metadata = getattr(msgs[0], "response_metadata", {})
                    self.log.debug(f"Checking response metadata: {metadata}")
                    self.console.print(f"[yellow]Response metadata: {metadata}[/yellow]")
                
                # Last resort, raw result
                if not useful:
                    for i, msg in enumerate(msgs):
                        msg_type = msg.__class__.__name__ if hasattr(msg, "__class__") else type(msg).__name__
                        content = getattr(msg, "content", str(msg))
                        self.console.print(f"[dim]{i}: {msg_type}[/dim]")
                    useful = "No response content received from LLM. Please try a different model or check Ollama server."
                    self.log.warning("No useful content foud LLM response")
            else:
                self.log.debug("Result is not in expected format, using raw string")
                useful = str(result)
            
            # handle markdwon 
            markdown_content = Markdown(useful)

            response_panel = Panel(
                markdown_content,
                title="Response",
                border_style="green",
                padding=(1, 2)
            )

            # print panel with rendered markdown
            self.console.print(response_panel)
            self.log.debug("interaction completed successfully")
        
        except Exception as e:
            if "does not support tools" in str(e):
                #self.log.error(f"Error during interaction: {str(e)}", exc_info=True)
                self.console.print(f"[bold red]Error during interaction: This model does not support tool calling.[/bold red]")
                self.console.print(f"[yellow]Kindly use different model.")
            else:
                self.log.error(f"Error during interaction: {str(e)}", exc_info=True)
                self.console.print(f"[bold red]Error during interaction: {e}[/bold red]")
                self.console.print(f"[yellow]Error Details: {type(e).__name__}: {str(e)}[/yellow]")

                # if result, print it raw for debug
                if 'result' in locals():
                    self.log.debug(f"Raw result in error state: {str(result)}")
                    if self.debug_mode:
                        self.console.print(f"[dim]Raw result in error state: {str(result)}...[/dim]")

    # method to close the interaction gracefully
    async def close(self):
        self.log.debug("Closing all MCP server connections")
        await self._exit_stack.aclose()
        self.console.print("[blue]All MCP Server Connection closed[/blue]")