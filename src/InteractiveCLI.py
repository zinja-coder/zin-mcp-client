

from src.MCPToolsClient import MCPToolsClient

from rich.console import Console
from rich.panel import Panel
from rich.prompt import Prompt
from rich.table import Table

class InteractiveCLI:
    # initialize various attributes of InteractiveCLI class
    def __init__(self, console: Console, client: MCPToolsClient):
        self.console = console
        self.client = client

    async def interactive_cli(self):
        # Run an interactive cli session with local llm 
        self.console.print(Panel.fit("[bold cyan]Zin MCP Client Interactive CLI[/bold cyan]\n""Type 'exit' to quit, 'help' for commands", border_style="cyan"))

        while True:
            try:
                command = Prompt.ask("\n[bold blue]︻デ═一××>[/bold blue] ")

                if command.lower() in ('exit', 'quit'):
                    break

                elif command.lower() == 'help':
                    help_table = Table(title="Available Commands")
                    help_table.add_column("Command", style="cyan")
                    help_table.add_row("help", "Show this help message")
                    help_table.add_row("exit/quit", "Exit the session")
                    help_table.add_row("servers", "List connected servers")
                    help_table.add_row("tools", "List available tools")
                    help_table.add_row("models", "List available Ollama models")
                    help_table.add_row("ask <query>", "Ask the agent a question")
                    self.console.print(help_table)

                elif command.lower() in ('servers','server'):
                    servers_table = Table(title="Connected Servers")
                    servers_table.add_column("Server Name", style="cyan")
                    servers_table.add_column("Status")
                    servers_table.add_column("Tools")

                    for server_name in self.client.sessions:
                        tools_count = len(self.client.tools_by_server.get(server_name, []))
                        servers_table.add_row(server_name, "Connected", str(tools_count))
                    self.console.print(servers_table)

                elif command.lower() == 'tools':
                    for server_name, tools in self.client.tools_by_server.items():
                        tools_table = Table(title=f"Tools for {server_name}")
                        tools_table.add_column("Tool Name", style="cyan")
                        tools_table.add_column("Description")

                        for tool in tools:
                            tools_table.add_row(
                                tool.name,
                                tool.description
                            )
                        self.console.print(tools_table)
                
                elif command.lower() == 'models':
                    models = await self.client.get_ollama_models()
                    models_table = Table(title="Available Ollama Models")
                    models_table.add_column("Model Name", style="cyan")

                    if models:
                        for model in models:
                            models_table.add_row(model)
                        self.console.print(models_table)
                    else:
                        self.console.print("[yellow]No models found. Check if Ollama is running?[/yellow]")
                
                elif command.lower().startswith('ask '):
                    query = command[4:].strip()
                    if query:
                        await self.client.run_interaction(query)
                    else:
                        self.console.print("[yellow]Please provide a query after 'ask'[/yellow]")

                else:
                    # send the query direct to agent
                    await self.client.run_interaction(command)
            
            except KeyboardInterrupt:
                break
            except Exception as e:
                self.console.print(f"[bold red]Error: {str(e)}[/bold red]")
            
        self.console.print("[blue]Closing Connections...[/blue]")
        await self.client.close()
        self.console.print("[green]Closed[/green]")