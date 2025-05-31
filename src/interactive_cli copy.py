"""
Copyright (c) 2025 zin mcp client developer(s) (https://github.com/zinja-coder/zin-mcp-client)
See the file 'LICENSE' for copying permission
"""

import logging

from rich.console import Console
from rich.panel import Panel
from rich.prompt import Prompt
from prompt_toolkit import PromptSession


from rich.table import Table

from src.mcp_tools_client import MCPToolsClient


session = PromptSession()

# This class is used for handling the interative cli session
class InteractiveCLI:
    # Initialize various attributes of InteractiveCLI class
    def __init__(self, console: Console, client: MCPToolsClient):
        self.console = console
        self.client = client
        self.debug_mode = client.debug_mode # debug mode is passed to MCPToolsClient from zin_mcp_client.py so fetch it directly
        self.log = logging.getLogger("zin_mcp_client.cli")
        
        self.log.debug("InteractiveCLI initialized")

    # method to run interactive cli
    async def interactive_cli(self):
        welcome_message = "[bold cyan]Zin MCP Client Interactive CLI[/bold cyan]\n" \
                            "Type '/exit' to quit, '/help' to show available commands."
        
        if self.debug_mode:
            welcome_message += "\n[yellow]Debug mode enabled - verbose output enabled[/yellow]"

        self.console.print(Panel.fit(welcome_message, border_style="cyan"))
        self.log.debug("Interactive CLI started, going into interactive cli while loop")

        while True:
            try:
                command = await session.prompt_async("\n>>> ")#Prompt.ask("\n[bold blue]>>>[/bold blue] ")#prompt("\n>>> ")
                self.log.debug(f"Command Received: {command}")

                if command.lower() in ('/exit', '/quit'):
                    self.log.debug("Exit command received, terminating session")
                    break

                elif command.lower() == '/help':
                    self.log.debug("help command received")
                    help_table = Table(title="Available Commands")
                    help_table.add_column("Command", style="cyan")
                    help_table.add_column("Description")
                    help_table.add_row("/help", "Show this help message")
                    help_table.add_row("/exit or /quit", "Exit the Zin MCP Client")
                    help_table.add_row("/servers", "List connected servers.")
                    help_table.add_row("/tools", "List available tools")
                    help_table.add_row("/models", "List available Ollama models")

                    self.console.print(help_table)

                elif command.lower() in ('/servers', '/server'):
                    self.log.debug("Showing server information:")
                    servers_table = Table(title="Connected Servers")
                    servers_table.add_column("Server Name", style="cyan")
                    servers_table.add_column("Status")
                    servers_table.add_column("Tools")

                    for server_name in self.client.sessions:
                        tools_count = len(self.client.tools_by_server.get(server_name, []))
                        servers_table.add_row(server_name, "Connected", str(tools_count))
                    self.console.print(servers_table)

                elif command.lower() == '/tools':
                    self.log.debug("Showing MCP tools information")
                    for server_name, tools in self.client.tools_by_server.items():
                        tools_table = Table(title=f"Tools fro {server_name}")
                        tools_table.add_column("Tool Name", style="cyan")
                        tools_table.add_column("Description")

                        for tool in tools:
                            tools_table.add_row(
                                tool.name,
                                tool.description
                            )
                        self.console.print(tools_table)

                elif command.lower() == '/models':
                    self.log.debug("Fetching available Ollama models")
                    models = await self.client.get_ollama_models()
                    models_table = Table(title="Available Ollama Models")
                    models_table.add_column("Model Name", style="cyan")

                    if models:
                        for model in models:
                            models_table.add_row(model)
                        self.console.print(models_table)
                    else:
                        self.console.print("[yellow]No Models Found. Check if Ollama is running?[/yellow]")
                
                else:
                    # Send the query direct to agent
                    self.log.debug(f"Processing direct query: {command}")
                    await self.client.run_interaction(command)
            
            except KeyboardInterrupt:
                self.log.info("KeyboardInterrupt received, terminating session")
                break
            except Exception as e:
                self.log.error(f"Error in CLI: {str(e)}", exc_info=True)
                self.console.print(f"[bold red]Error: {str(e)}[/bold red]")
        
        self.console.print("[blue]Closing Connections...[/blue]")
        self.log.debug("Closing client connections")
        await self.client.close()
        self.console.print("[green]Closed[/green]")
