# /// script
# dependencies = [
#   "fastmcp",
#   "httpx",
#   "logging",
#   "langchain_mcp_adapters",
#   "langgraph",
#   "langchain_ollama",
#   "rich",
#   "typer"
# ]
# ///

"""
Copyright (c) 2025 zin mcp client developer(s) (https://github.com/zinja-coder/zin-mcp-client)
See the file 'LICENSE' for copying permission
"""

import typer
import asyncio

from typing import List
from rich.console import Console
from rich.prompt import IntPrompt

from src.mcp_tools_client import MCPToolsClient
from src.interactive_cli import InteractiveCLI

# contants variables and initializing rich console for cli
DEFAULT_CONFIG_PATH = 'mcp_config.json'
console = Console()
app = typer.Typer(help="Zin MCP Client", add_completion=False)

@app.command()
def run(
    config_file_path: str = typer.Option(DEFAULT_CONFIG_PATH, "--config", "-c", help="Path to config file"),
    server: List[str] = typer.Option(None, "--server", "-s", help="Specified servers to initialize (defaults to all)"),
    model: str = typer.Option(None, "--model", "-m", help="Which LLM to use"),
    debug: bool = typer.Option(False, "--debug", "-d", help="Enable verbose debug output"),
    query: str = typer.Option(None, "--query", "-q", help="Run single LLM query and then exit")
):
    # run mcp client
    async def _run():
        # create object of MCPToolsClient
        client = MCPToolsClient(console=console, config_path=config_file_path, debug_mode=debug)

        # get the available models
        models = await client.get_ollama_models()
        if models:
            console.print("[green]Available Ollama Models:[/green]")
            for i, m in enumerate(models, 1):
                console.print(f"{i}. {m}")
            # if model not specified or not in available models, let user select
            if model not in models:
                if len(models) == 1: # if there is only on model select it
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
            client.close()
        
        # Initialize llm
        console.print(f"[blue]Initializing LLM with model: {selected_model}[/blue]")
        await client.initialize_llm(selected_model)

        # initialize mcp servers
        if await client.initialize_servers(server): # process only if server is initialized properly
            # create agent
            if await client.create_agent():
                if query:
                    # Run single query and exit
                    await client.run_interaction(query)
                    await client.close()
                else:
                    # Start the interactive cli mode
                    interactive_mode = InteractiveCLI(console=console, client=client)
                    await interactive_mode.interactive_cli()
            else:
                console.print("[bold red]Failed to create agent.[/bold red]")
                await client.close()
        else:
            console.print("[bold red]Failed to initialize any MCP servers.[/bold red]")
    asyncio.run(_run())

if __name__ == "__main__":
    app()
        