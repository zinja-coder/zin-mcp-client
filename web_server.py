# /// script
# dependencies = [
#   "fastmcp",
#   "httpx",
#   "logging",
#   "langchain_mcp_adapters",
#   "langgraph",
#   "langchain_ollama",
#   "rich",
#   "typer",
#   "prompt_toolkit",
#   "fastapi"
# ]
# ///


"""
Web UI for Zin MCP Client
Copyright (c) 2025 zin mcp client developer(s)
"""

from fastapi import FastAPI, WebSocket, WebSocketDisconnect, HTTPException
import uvicorn
from fastapi.staticfiles import StaticFiles
from fastapi.responses import HTMLResponse
from fastapi.middleware.cors import CORSMiddleware
from pydantic import BaseModel
import asyncio
import json
import logging
from typing import List, Optional, Dict, Any
from contextlib import asynccontextmanager

# Import your existing MCP client
from src.mcp_tools_client import MCPToolsClient
from src.logger import Logger

# Pydantic models for API
class ChatMessage(BaseModel):
    message: str
    timestamp: str
    sender: str  # 'user' or 'assistant'

class ConfigRequest(BaseModel):
    config_path: str
    servers: Optional[List[str]] = None
    model: str
    debug: bool = False

class QueryRequest(BaseModel):
    query: str

# Global state management
class WebUIState:
    def __init__(self):
        self.client: Optional[MCPToolsClient] = None
        self.is_initialized = False
        self.connected_websockets = set()
        self.chat_history = []
        
    async def initialize_client(self, config_path: str, servers: List[str], model: str, debug: bool):
        """Initialize the MCP client"""
        try:
            # Create a mock console for web context
            from rich.console import Console
            console = Console(file=open('/dev/null', 'w'))  # Silent console for web
            
            self.client = MCPToolsClient(console=console, config_path=config_path, debug_mode=debug)
            
            # Get available models and validate
            models = await self.client.get_ollama_models()
            if not models:
                raise Exception("No Ollama models found. Make sure Ollama is running.")
            
            if model not in models:
                model = models[0]  # Use first available model
            
            # Initialize LLM
            await self.client.initialize_llm(model)
            
            # Initialize servers
            if not await self.client.initialize_servers(servers):
                raise Exception("Failed to initialize MCP servers")
            
            # Create agent
            if not await self.client.create_agent():
                raise Exception("Failed to create agent")
            
            self.is_initialized = True
            return {"status": "success", "model": model, "servers": list(self.client.sessions.keys())}
            
        except Exception as e:
            if self.client:
                await self.client.close()
            self.client = None
            self.is_initialized = False
            raise e
    
    async def send_query(self, query: str):
        """Send query to MCP client and return response"""
        if not self.is_initialized or not self.client:
            raise Exception("Client not initialized")
        
        # Capture the response by modifying the client's console output
        response_content = []
        
        # Mock the console.print method to capture output
        original_print = self.client.console.print
        def capture_print(*args, **kwargs):
            # Convert rich objects to strings
            content = []
            for arg in args:
                if hasattr(arg, '__rich__'):
                    content.append(str(arg))
                else:
                    content.append(str(arg))
            response_content.append(' '.join(content))
        
        self.client.console.print = capture_print
        
        try:
            await self.client.run_interaction(query)
            # Join all captured content
            response = '\n'.join(response_content)
            if not response.strip():
                response = "No response received from the model."
            return response
        finally:
            # Restore original print method
            self.client.console.print = original_print
    
    async def get_server_info(self):
        """Get information about connected servers"""
        if not self.is_initialized or not self.client:
            return {"servers": [], "tools": {}}
        
        servers = []
        tools_info = {}
        
        for server_name in self.client.sessions:
            tools_count = len(self.client.tools_by_server.get(server_name, []))
            servers.append({
                "name": server_name,
                "status": "Connected",
                "tools_count": tools_count
            })
            
            tools_info[server_name] = [
                {"name": tool.name, "description": tool.description}
                for tool in self.client.tools_by_server.get(server_name, [])
            ]
        
        return {"servers": servers, "tools": tools_info}
    
    async def get_models(self):
        """Get available Ollama models"""
        if self.client:
            return await self.client.get_ollama_models()
        else:
            # Create temporary client to get models
            from rich.console import Console
            console = Console(file=open('/dev/null', 'w'))
            temp_client = MCPToolsClient(console=console, config_path="", debug_mode=False)
            models = await temp_client.get_ollama_models()
            await temp_client.close()
            return models
    
    async def close(self):
        """Close the MCP client"""
        if self.client:
            await self.client.close()
        self.client = None
        self.is_initialized = False

# Global state instance
state = WebUIState()

@asynccontextmanager
async def lifespan(app: FastAPI):
    """Handle application startup and shutdown"""
    yield
    # Cleanup on shutdown
    await state.close()

# Create FastAPI app
app = FastAPI(title="Zin MCP Client Web UI", lifespan=lifespan)

# Add CORS middleware
app.add_middleware(
    CORSMiddleware,
    allow_origins=["*"],
    allow_credentials=True,
    allow_methods=["*"],
    allow_headers=["*"],
)

# API Routes
@app.get("/", response_class=HTMLResponse)
async def get_index():
    """Serve the main HTML page"""
    return HTML_TEMPLATE

@app.post("/api/initialize")
async def initialize_client(config: ConfigRequest):
    """Initialize the MCP client"""
    try:
        result = await state.initialize_client(
            config.config_path, 
            config.servers or [], 
            config.model, 
            config.debug
        )
        return result
    except Exception as e:
        raise HTTPException(status_code=400, detail=str(e))

@app.post("/api/query")
async def send_query(request: QueryRequest):
    """Send a query to the MCP client"""
    try:
        response = await state.send_query(request.query)
        return {"response": response}
    except Exception as e:
        raise HTTPException(status_code=400, detail=str(e))

@app.get("/api/servers")
async def get_servers():
    """Get server information"""
    return await state.get_server_info()

@app.get("/api/models")
async def get_models():
    """Get available Ollama models"""
    try:
        models = await state.get_models()
        return {"models": models}
    except Exception as e:
        print(e)
        raise HTTPException(status_code=400, detail=str(e))

@app.get("/api/status")
async def get_status():
    """Get client status"""
    return {
        "initialized": state.is_initialized,
        "has_client": state.client is not None
    }

@app.post("/api/close")
async def close_client():
    """Close the MCP client"""
    await state.close()
    return {"status": "closed"}

# WebSocket for real-time communication
@app.websocket("/ws")
async def websocket_endpoint(websocket: WebSocket):
    await websocket.accept()
    state.connected_websockets.add(websocket)
    
    try:
        while True:
            data = await websocket.receive_text()
            message = json.loads(data)
            
            if message["type"] == "query":
                try:
                    response = await state.send_query(message["query"])
                    await websocket.send_text(json.dumps({
                        "type": "response",
                        "content": response
                    }))
                except Exception as e:
                    await websocket.send_text(json.dumps({
                        "type": "error",
                        "content": str(e)
                    }))
    
    except WebSocketDisconnect:
        state.connected_websockets.discard(websocket)

# HTML Template
HTML_TEMPLATE = """
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Zin MCP Client Web UI</title>
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, sans-serif;
            background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
            min-height: 100vh;
            display: flex;
            flex-direction: column;
        }

        .container {
            max-width: 1200px;
            margin: 0 auto;
            padding: 20px;
            flex: 1;
            display: flex;
            flex-direction: column;
        }

        .header {
            background: rgba(255, 255, 255, 0.1);
            backdrop-filter: blur(10px);
            border-radius: 12px;
            padding: 20px;
            margin-bottom: 20px;
            text-align: center;
            border: 1px solid rgba(255, 255, 255, 0.2);
        }

        .header h1 {
            color: white;
            font-size: 2.5rem;
            margin-bottom: 10px;
            font-weight: 300;
        }

        .header p {
            color: rgba(255, 255, 255, 0.8);
            font-size: 1.1rem;
        }

        .main-content {
            display: grid;
            grid-template-columns: 1fr 2fr;
            gap: 20px;
            flex: 1;
        }

        .sidebar {
            background: rgba(255, 255, 255, 0.1);
            backdrop-filter: blur(10px);
            border-radius: 12px;
            padding: 20px;
            border: 1px solid rgba(255, 255, 255, 0.2);
            height: fit-content;
        }

        .chat-container {
            background: rgba(255, 255, 255, 0.1);
            backdrop-filter: blur(10px);
            border-radius: 12px;
            border: 1px solid rgba(255, 255, 255, 0.2);
            display: flex;
            flex-direction: column;
            height: 600px;
        }

        .section-title {
            color: white;
            font-size: 1.3rem;
            margin-bottom: 15px;
            font-weight: 500;
        }

        .form-group {
            margin-bottom: 15px;
        }

        .form-group label {
            color: rgba(255, 255, 255, 0.9);
            display: block;
            margin-bottom: 5px;
            font-weight: 500;
        }

        .form-control {
            width: 100%;
            padding: 10px 12px;
            background: rgba(255, 255, 255, 0.1);
            border: 1px solid rgba(255, 255, 255, 0.3);
            border-radius: 8px;
            color: white;
            font-size: 14px;
        }

        .form-control::placeholder {
            color: rgba(255, 255, 255, 0.6);
        }

        .form-control:focus {
            outline: none;
            border-color: rgba(255, 255, 255, 0.5);
            background: rgba(255, 255, 255, 0.15);
        }

        .btn {
            padding: 10px 20px;
            background: linear-gradient(45deg, #ff6b6b, #ee5a24);
            color: white;
            border: none;
            border-radius: 8px;
            cursor: pointer;
            font-weight: 500;
            transition: all 0.3s ease;
            width: 100%;
        }

        .btn:hover {
            transform: translateY(-2px);
            box-shadow: 0 4px 12px rgba(0, 0, 0, 0.2);
        }

        .btn:disabled {
            opacity: 0.6;
            cursor: not-allowed;
            transform: none;
        }

        .btn-secondary {
            background: linear-gradient(45deg, #74b9ff, #0984e3);
        }

        .status {
            padding: 10px;
            border-radius: 8px;
            margin-bottom: 15px;
            font-weight: 500;
        }

        .status.success {
            background: rgba(46, 204, 113, 0.2);
            color: #2ecc71;
            border: 1px solid rgba(46, 204, 113, 0.3);
        }

        .status.error {
            background: rgba(231, 76, 60, 0.2);
            color: #e74c3c;
            border: 1px solid rgba(231, 76, 60, 0.3);
        }

        .chat-messages {
            flex: 1;
            padding: 20px;
            overflow-y: auto;
            display: flex;
            flex-direction: column;
            gap: 15px;
        }

        .message {
            max-width: 80%;
            padding: 12px 16px;
            border-radius: 12px;
            word-wrap: break-word;
        }

        .message.user {
            align-self: flex-end;
            background: linear-gradient(45deg, #667eea, #764ba2);
            color: white;
        }

        .message.assistant {
            align-self: flex-start;
            background: rgba(255, 255, 255, 0.15);
            color: white;
            border: 1px solid rgba(255, 255, 255, 0.2);
        }

        .chat-input {
            padding: 20px;
            border-top: 1px solid rgba(255, 255, 255, 0.2);
        }

        .input-group {
            display: flex;
            gap: 10px;
        }

        .input-group .form-control {
            flex: 1;
        }

        .input-group .btn {
            width: auto;
            padding: 10px 20px;
        }

        .info-card {
            background: rgba(255, 255, 255, 0.05);
            border-radius: 8px;
            padding: 15px;
            margin-bottom: 15px;
            border: 1px solid rgba(255, 255, 255, 0.1);
        }

        .info-card h4 {
            color: white;
            margin-bottom: 10px;
            font-size: 1rem;
        }

        .info-card p, .info-card ul {
            color: rgba(255, 255, 255, 0.8);
            font-size: 0.9rem;
            line-height: 1.4;
        }

        .info-card ul {
            list-style: none;
            padding-left: 0;
        }

        .info-card li {
            padding: 2px 0;
        }

        .loading {
            display: inline-block;
            width: 20px;
            height: 20px;
            border: 3px solid rgba(255, 255, 255, 0.3);
            border-radius: 50%;
            border-top-color: white;
            animation: spin 1s ease-in-out infinite;
        }

        @keyframes spin {
            to { transform: rotate(360deg); }
        }

        @media (max-width: 768px) {
            .main-content {
                grid-template-columns: 1fr;
            }
            
            .header h1 {
                font-size: 2rem;
            }
            
            .chat-container {
                height: 500px;
            }
        }
    </style>
</head>
<body>
    <div class="container">
        <div class="header">
            <h1>Zin MCP Client</h1>
            <p>Web Interface for Model Context Protocol Client</p>
        </div>

        <div class="main-content">
            <div class="sidebar">
                <div class="section-title">Configuration</div>
                
                <div id="status-container">
                    <div id="status" class="status error">Not Connected</div>
                </div>

                <form id="config-form">
                    <div class="form-group">
                        <label for="config-path">Config File Path</label>
                        <input type="text" id="config-path" class="form-control" value="mcp_config.json" placeholder="Path to MCP config file">
                    </div>

                    <div class="form-group">
                        <label for="model">Model</label>
                        <select id="model" class="form-control">
                            <option value="">Loading models...</option>
                        </select>
                    </div>

                    <div class="form-group">
                        <label for="servers">Servers (comma-separated, optional)</label>
                        <input type="text" id="servers" class="form-control" placeholder="server1,server2 (leave empty for all)">
                    </div>

                    <div class="form-group">
                        <label>
                            <input type="checkbox" id="debug"> Enable Debug Mode
                        </label>
                    </div>

                    <button type="submit" class="btn" id="connect-btn">Connect</button>
                </form>

                <div id="server-info" style="display: none;">
                    <div class="section-title" style="margin-top: 20px;">Server Info</div>
                    <div id="server-details"></div>
                </div>
            </div>

            <div class="chat-container">
                <div class="chat-messages" id="chat-messages">
                    <div class="message assistant">
                        Welcome to Zin MCP Client! Please configure and connect to start chatting.
                    </div>
                </div>
                
                <div class="chat-input">
                    <div class="input-group">
                        <input type="text" id="message-input" class="form-control" placeholder="Type your message..." disabled>
                        <button id="send-btn" class="btn btn-secondary" disabled>Send</button>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <script>
        class MCPWebUI {
            constructor() {
                this.initialized = false;
                this.setupEventListeners();
                this.loadModels();
                this.checkStatus();
            }

            setupEventListeners() {
                document.getElementById('config-form').addEventListener('submit', (e) => {
                    e.preventDefault();
                    this.connect();
                });

                document.getElementById('send-btn').addEventListener('click', () => {
                    this.sendMessage();
                });

                document.getElementById('message-input').addEventListener('keypress', (e) => {
                    if (e.key === 'Enter') {
                        this.sendMessage();
                    }
                });
            }

            async loadModels() {
                try {
                    const response = await fetch('/api/models');
                    const data = await response.json();
                    const select = document.getElementById('model');
                    
                    select.innerHTML = '';
                    if (data.models && data.models.length > 0) {
                        data.models.forEach(model => {
                            const option = document.createElement('option');
                            option.value = model;
                            option.textContent = model;
                            select.appendChild(option);
                        });
                    } else {
                        select.innerHTML = '<option value="">No models found</option>';
                    }
                } catch (error) {
                    console.error('Failed to load models:', error);
                    document.getElementById('model').innerHTML = '<option value="">Error loading models</option>';
                }
            }

            async checkStatus() {
                try {
                    const response = await fetch('/api/status');
                    const data = await response.json();
                    this.updateStatus(data.initialized);
                } catch (error) {
                    console.error('Failed to check status:', error);
                }
            }

            async connect() {
                const configPath = document.getElementById('config-path').value;
                const model = document.getElementById('model').value;
                const serversInput = document.getElementById('servers').value;
                const debug = document.getElementById('debug').checked;
                
                if (!configPath || !model) {
                    alert('Please provide config path and select a model');
                    return;
                }

                const servers = serversInput ? serversInput.split(',').map(s => s.trim()) : [];
                const connectBtn = document.getElementById('connect-btn');
                
                connectBtn.disabled = true;
                connectBtn.innerHTML = '<span class="loading"></span> Connecting...';

                try {
                    const response = await fetch('/api/initialize', {
                        method: 'POST',
                        headers: {
                            'Content-Type': 'application/json',
                        },
                        body: JSON.stringify({
                            config_path: configPath,
                            model: model,
                            servers: servers,
                            debug: debug
                        })
                    });

                    const data = await response.json();
                    
                    if (response.ok) {
                        this.updateStatus(true);
                        this.loadServerInfo();
                        this.addMessage('assistant', `Connected successfully! Using model: ${data.model}`);
                    } else {
                        throw new Error(data.detail || 'Connection failed');
                    }
                } catch (error) {
                    this.updateStatus(false);
                    this.addMessage('assistant', `Connection failed: ${error.message}`);
                } finally {
                    connectBtn.disabled = false;
                    connectBtn.textContent = 'Connect';
                }
            }

            async sendMessage() {
                const input = document.getElementById('message-input');
                const message = input.value.trim();
                
                if (!message) return;

                this.addMessage('user', message);
                input.value = '';
                
                const sendBtn = document.getElementById('send-btn');
                sendBtn.disabled = true;
                sendBtn.innerHTML = '<span class="loading"></span>';

                try {
                    const response = await fetch('/api/query', {
                        method: 'POST',
                        headers: {
                            'Content-Type': 'application/json',
                        },
                        body: JSON.stringify({
                            query: message
                        })
                    });

                    const data = await response.json();
                    
                    if (response.ok) {
                        this.addMessage('assistant', data.response);
                    } else {
                        throw new Error(data.detail || 'Query failed');
                    }
                } catch (error) {
                    this.addMessage('assistant', `Error: ${error.message}`);
                } finally {
                    sendBtn.disabled = false;
                    sendBtn.textContent = 'Send';
                }
            }

            async loadServerInfo() {
                try {
                    const response = await fetch('/api/servers');
                    const data = await response.json();
                    
                    const serverDetails = document.getElementById('server-details');
                    serverDetails.innerHTML = '';

                    if (data.servers && data.servers.length > 0) {
                        data.servers.forEach(server => {
                            const card = document.createElement('div');
                            card.className = 'info-card';
                            
                            const tools = data.tools[server.name] || [];
                            const toolsList = tools.map(tool => `<li>${tool.name}: ${tool.description}</li>`).join('');
                            
                            card.innerHTML = `
                                <h4>${server.name}</h4>
                                <p>Status: ${server.status}</p>
                                <p>Tools: ${server.tools_count}</p>
                                ${toolsList ? `<ul>${toolsList}</ul>` : ''}
                            `;
                            
                            serverDetails.appendChild(card);
                        });
                        
                        document.getElementById('server-info').style.display = 'block';
                    }
                } catch (error) {
                    console.error('Failed to load server info:', error);
                }
            }

            updateStatus(connected) {
                const status = document.getElementById('status');
                const messageInput = document.getElementById('message-input');
                const sendBtn = document.getElementById('send-btn');
                
                if (connected) {
                    status.textContent = 'Connected';
                    status.className = 'status success';
                    messageInput.disabled = false;
                    sendBtn.disabled = false;
                    this.initialized = true;
                } else {
                    status.textContent = 'Not Connected';
                    status.className = 'status error';
                    messageInput.disabled = true;
                    sendBtn.disabled = true;
                    this.initialized = false;
                    document.getElementById('server-info').style.display = 'none';
                }
            }

            addMessage(sender, content) {
                const messagesContainer = document.getElementById('chat-messages');
                const messageDiv = document.createElement('div');
                messageDiv.className = `message ${sender}`;
                messageDiv.textContent = content;
                
                messagesContainer.appendChild(messageDiv);
                messagesContainer.scrollTop = messagesContainer.scrollHeight;
            }
        }

        // Initialize the web UI
        new MCPWebUI();
    </script>
</body>
</html>
"""

if __name__ == "__main__":
    uvicorn.run(app, host="0.0.0.0", port=8000)