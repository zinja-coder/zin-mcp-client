import uvicorn
import argparse
import sys
import os

def main():
    global CONFIG_PATH
    
    parser = argparse.ArgumentParser(description="Web MCP Client")
    parser.add_argument("--host", default="0.0.0.0", help="Host to bind to")
    parser.add_argument("--port", type=int, default=8000, help="Port to bind to")
    parser.add_argument("--config", default="mcp_config.json", help="Path to MCP configuration file")
    
    args = parser.parse_args()
    
    # Set the global CONFIG_PATH before starting the server
    CONFIG_PATH = args.config
    
    # Verify config file exists
    if not os.path.exists(CONFIG_PATH):
        print(f"Error: Configuration file '{CONFIG_PATH}' not found!")
        print("Please create the configuration file or specify a valid path with --config")
        sys.exit(1)
    
    print(f"Starting Web MCP Client server...")
    print(f"Config file: {CONFIG_PATH}")
    print(f"Host: {args.host}")
    print(f"Port: {args.port}")
    print(f"Open your browser to: http://{args.host}:{args.port}")
    
    # Start the FastAPI server
    uvicorn.run(
        "main:app",
        host=args.host,
        port=args.port,
        reload=False,
        log_level="info"
    )

if __name__ == "__main__":
    main()