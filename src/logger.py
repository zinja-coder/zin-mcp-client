"""
Copyright: Copyright (c) 2025 zin mcp client developer(s) (https://github.com/zinja-coder/zin-mcp-client)
See the file 'LICENSE' for copying permission
"""

import logging
import os

from rich.console import Console
from rich.logging import RichHandler
from typing import Optional

# logger class to handler logging, this will handle both console and file logging
class Logger:
    def __init__(self, console: Console, debug_mode: bool = False):
        self.console = console
        self.debug_mode = debug_mode
        self.log_dir = "logs"

        # Create logs directory if does not exist
        os.makedirs(self.log_dir, exist_ok=True)
        # Log file
        self.log_file = os.path.join(self.log_dir, "zin_mcp_client.log")

        # setting up the root logger
        self.setup_logger()

        # getting the logger for this module
        self.logger = logging.getLogger("zin_mcp_client")

        # Suppress specific external loggers
        #self.suppress_external_loggers()

        # log startup information
        if self.debug_mode:
            self.logger.info(f"logging, initialized. Log file: {self.log_file} \nDebug mode enabled - verbose output enabled")
    
    def setup_logger(self):
        # configuring the root logger with file and console handlers
        root_logger = logging.getLogger()
        root_logger.setLevel(logging.DEBUG) # Capture all levels

        # Clear any existing handlers
        for handler in root_logger.handlers[:]:
            root_logger.removeHandler(handler)
        
        # Console handler with rich formatting
        console_level = logging.DEBUG if self.debug_mode else logging.INFO
        console_handler = RichHandler(
            console=self.console,
            show_path=self.debug_mode,
            enable_link_path=self.debug_mode,
            markup=True,
            show_time=True,
            rich_tracebacks=True,
            tracebacks_show_locals=self.debug_mode,
            level=console_level
        )

        # file handler always log everything because this helps debug the application even if --debug is not given
        file_handler = logging.FileHandler(self.log_file)
        file_handler.setLevel(logging.DEBUG)
        file_format = logging.Formatter(
            '%(asctime)s [%(levelname)s] %(name)s (%(filename)s:%(lineno)d) - %(message)s'
        )
        file_handler.setFormatter(file_format)

        # Add both handlers
        root_logger.addHandler(console_handler)
        root_logger.addHandler(file_handler)

    # Method for mcp server specific logging
    def get_server_logger(self, server_name: str) -> logging.Logger:
        # Get a logger instance for a specific MCP server
        logger = logging.getLogger(f"zin_mcp_client.server.{server_name}")

        # create a server-specific log file
        server_log_file = os.path.join(self.log_dir, f"server_{server_name}.log")

        # Add a file handler specifically for this server
        handler = logging.FileHandler(server_log_file)
        handler.setLevel(logging.DEBUG)
        formatter = logging.Formatter(
            '%(asctime)s [%(levelname)s] %(message)s'
        )
        handler.setFormatter(formatter)
        logger.addHandler(handler)

        return logger
    
    # Suppress logs from external libraries.
    #def suppress_external_loggers(self):
        
        # Suppress httpx logs (HTTP request/response logs)
    #    logging.getLogger("httpx").setLevel(logging.DEBUG)
    #    logging.getLogger("langchain_ollama").setLevel(logging.DEBUG)
        
        # Suppress httpcore logs (lower level HTTP logs)
    #    logging.getLogger("httpcore").setLevel(logging.DEBUG)
        
        # Suppress other common noisy libraries
    #    logging.getLogger("urllib3").setLevel(logging.DEBUG)
    #    logging.getLogger("asyncio").setLevel(logging.DEBUG)
    #    logging.getLogger("mcp").setLevel(logging.DEBUG)
    #    logging.getLogger("langchain_mcp_adapters.tools").setLevel(logging.DEBUG)
    #    logging.getLogger("langchain").setLevel(logging.DEBUG)
    #    logging.getLogger("langchain_core").setLevel(logging.DEBUG)
    #    logging.getLogger("langgraph").setLevel(logging.DEBUG)

    # debug the raw data objects
    def debug(self, message: str, data: Optional[object] = None):
        # Log debug message with optional data object
        self.logger.debug(message)

        if data is not None and self.debug_mode:
            try:
                # pretty print
                self.console.print("[dim] DEBUG DATA:[/dimg]")
                self.console.print(data)
            except Exception:
                self.logger.debug(f"Data: {data}")
    
    # log info message
    def info(self, message: str):
        self.logger.info(message)
    
    # log warning
    def warning(self, message: str):
        self.logger.warning(message)
    
    # log error
    def error(self, message: str, exc_info: bool = False):
        self.logger.error(message, exc_info=exc_info)
    
    # log critical
    def critical(self, message: str, exc_info: bool = True):
        self.logger.critical(message, exc_info=exc_info)