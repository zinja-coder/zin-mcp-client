import logging
from rich.panel import Panel
from rich.prompt import Prompt
from prompt_toolkit import PromptSession
from rich.table import Table

from src.mcp_tools_client import MCPToolsClient

session = PromptSession()

class InteractiveCLI:
    def __init__(self, console, client: MCPToolsClient):
        self.console = console
        self._print = lambda *args, **kwargs: self.console.print(*args, **kwargs) if self.console else None
        self.client = client
        self.debug_mode = client.debug_mode
        self.log = logging.getLogger("zin_mcp_client.cli")

    async def interactive_cli(self):
        welcome_message = "[bold cyan]Zin MCP Client Interactive CLI[/bold cyan]\n" \
                          "Type '/exit' to quit, '/help' to show available commands."
        if self.debug_mode:
            welcome_message += "\n[yellow]Debug mode enabled - verbose output enabled[/yellow]"

        self._print(Panel.fit(welcome_message, border_style="cyan"))

        while True:
            try:
                command = await session.prompt_async("\n>>> ")
                self.log.debug(f"Command Received: {command}")

                if command.lower() in ('/exit', '/quit'):
                    break

                elif command.lower() == '/help':
                    help_table = Table(title="Available Commands")
                    help_table.add_column("Command", style="cyan")
                    help_table.add_column("Description")
                    help_table.add_row("/help", "Show this help message")
                    help_table.add_row("/exit or /quit", "Exit the Zin MCP Client")
                    help_table.add_row("/servers", "List connected servers.")
                    help_table.add_row("/tools", "List available tools")
                    help_table.add_row("/models", "List available Ollama models")
                    self._print(help_table)

                elif command.lower() in ('/servers', '/server'):
                    servers_table = Table(title="Connected Servers")
                    servers_table.add_column("Server Name", style="cyan")
                    servers_table.add_column("Status")
                    servers_table.add_column("Tools")

                    for server_name in self.client.sessions:
                        tools_count = len(self.client.tools_by_server.get(server_name, []))
                        servers_table.add_row(server_name, "Connected", str(tools_count))
                    self._print(servers_table)

                elif command.lower() == '/tools':
                    for server_name, tools in self.client.tools_by_server.items():
                        tools_table = Table(title=f"Tools for {server_name}")
                        tools_table.add_column("Tool Name", style="cyan")
                        tools_table.add_column("Description")

                        for tool in tools:
                            tools_table.add_row(tool.name, tool.description)
                        self._print(tools_table)

                elif command.lower() == '/models':
                    models = await self.client.get_ollama_models()
                    models_table = Table(title="Available Ollama Models")
                    models_table.add_column("Model Name", style="cyan")

                    if models:
                        for model in models:
                            models_table.add_row(model)
                        self._print(models_table)
                    else:
                        self._print("[yellow]No Models Found. Check if Ollama is running?[/yellow]")

                else:
                    await self.client.run_interaction(command)

            except KeyboardInterrupt:
                break
            except Exception as e:
                self.log.error(f"Error in CLI: {str(e)}", exc_info=True)
                self._print(f"[bold red]Error: {str(e)}[/bold red]")

        self._print("[blue]Closing Connections...[/blue]")
        await self.client.close()
        self._print("[green]Closed[/green]")
