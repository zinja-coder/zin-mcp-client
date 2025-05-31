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
#   "fastapi",
#   "uvicorn",
#   "langchain",
#   "pydantic",
#   "python-multipart",
#   "aiofiles",
#   "python-json-logger"
# ]
# ///

"""
Web MCP Client - FastAPI Backend
Copyright (c) 2025 Web MCP Client Developer(s)
"""

import json
import httpx
import logging
import asyncio
from typing import List, Dict, Optional
from contextlib import AsyncExitStack
from fastapi import FastAPI, HTTPException, WebSocket, WebSocketDisconnect
from fastapi.staticfiles import StaticFiles
from fastapi.responses import HTMLResponse
from pydantic import BaseModel

from mcp import ClientSession
from mcp.client.stdio import stdio_client, StdioServerParameters
from langchain_mcp_adapters.tools import load_mcp_tools
from langgraph.prebuilt import create_react_agent
from langchain_ollama import ChatOllama

# Setup logging
logging.basicConfig(level=logging.INFO)
logger = logging.getLogger(__name__)

# Global variable to store config path
CONFIG_PATH = "web_mcp_config.json"

# Initialize FastAPI app
app = FastAPI(title="Web MCP Client", version="1.0.0")

# Global client instance - will be initialized with proper config path
client = None

# Serve static files
app.mount("/static", StaticFiles(directory="static"), name="static")


# Pydantic models for API
class QueryRequest(BaseModel):
    query: str

class ServerInfo(BaseModel):
    name: str
    status: str
    tools_count: int

class ToolInfo(BaseModel):
    name: str
    description: str
    server: str

class ModelInfo(BaseModel):
    name: str

# Web MCP Client class
class WebMCPClient:
    def __init__(self, config_path: str):
        self.config_path = config_path
        self.config = self._load_config()
        self.sessions = {}
        self.tools_by_server = {}
        self.llm = None
        self.agent = None
        self.selected_model = None
        self._exit_stack = AsyncExitStack()
        
        logger.info(f"WebMCPClient initialized with config from {config_path}")

    def _load_config(self) -> dict:
        try:
            with open(self.config_path, "r") as f:
                return json.load(f)
        except FileNotFoundError:
            logger.warning(f"Config file not found at {self.config_path}")
            return {"mcpServers": {}}

    async def get_ollama_models(self) -> List[str]:
        logger.info("Fetching Ollama models")
        try:
            async with httpx.AsyncClient() as client:
                response = await client.get("http://127.0.0.1:11434/api/tags")
                data = response.json()
                models = [model["name"] for model in data.get("models", [])]
                logger.info(f"Found {len(models)} Ollama models")
                return models
        except (httpx.ConnectError, httpx.RequestError) as e:
            logger.error(f"Failed to connect to Ollama API: {str(e)}")
            return []

    async def initialize_servers(self, server_names: List[str] = None) -> bool:
        if not self.config.get("mcpServers"):
            logger.error("No MCP Servers configured")
            return False

        servers = self.config["mcpServers"]
        server_names = server_names or list(servers.keys())

        logger.info(f"Initializing Servers: {', '.join(server_names)}")
        initialized_servers = 0
        
        for server_name in server_names:
            if server_name not in servers:
                logger.warning(f"Server '{server_name}' not found in config")
                continue

            server_config = servers[server_name]
            command = server_config.get("command")
            args = server_config.get("args", [])

            logger.info(f"Initializing {server_name}")
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
                logger.info(f"Server {server_name} initialized with {len(tools)} tools")
            
            except Exception as e:
                logger.error(f"Error initializing {server_name}: {str(e)}")
            
        return initialized_servers > 0

    async def initialize_llm(self, model_name: str) -> bool:
        logger.info(f"Initializing LLM with model: {model_name}")
        try:
            self.llm = ChatOllama(model=model_name)
            self.selected_model = model_name
            logger.info("LLM initialized successfully")
            return True
        except Exception as e:
            logger.error(f"Error initializing LLM: {str(e)}")
            return False

    async def create_agent(self) -> bool:
        logger.info("Creating agent with tools and LLM")
        if not self.llm:
            logger.error("LLM not initialized")
            return False
        
        all_tools = [tool for tools in self.tools_by_server.values() for tool in tools]
        if not all_tools:
            logger.error("No Tools available")
            return False
        
        try:
            self.agent = create_react_agent(self.llm, all_tools)
            logger.info(f"Agent created successfully with {len(all_tools)} tools")
            return True
        except Exception as e:
            logger.error(f"Error creating agent: {str(e)}")
            return False

    async def run_interaction(self, query: str) -> str:
        logger.info(f"Running interaction with query: {query}")
        if not self.agent:
            raise HTTPException(status_code=400, detail="Agent not initialized")

        try:
            input_data = {"messages": query}
            result = await self.agent.ainvoke(input_data)

            # Extract response content
            if isinstance(result, dict) and "messages" in result:
                msgs = result.get("messages", [])
                
                # Look for the last non-empty AIMessage
                for m in reversed(msgs):
                    if hasattr(m, "__class__") and m.__class__.__name__ == "AIMessage":
                        content = getattr(m, "content", "").strip()
                        if content:
                            return content
                
                # Fall back to tool messages
                for m in reversed(msgs):
                    if hasattr(m, "__class__") and m.__class__.__name__ == "ToolMessage":
                        content = getattr(m, "content", "").strip()
                        if content:
                            return content
                
                return "No response content received from LLM"
            else:
                return str(result)
        
        except Exception as e:
            if "does not support tools" in str(e):
                raise HTTPException(status_code=400, detail="This model does not support tool calling")
            else:
                logger.error(f"Error during interaction: {str(e)}")
                raise HTTPException(status_code=500, detail=f"Error during interaction: {str(e)}")

    def get_servers_info(self) -> List[ServerInfo]:
        servers_info = []
        for server_name in self.sessions:
            tools_count = len(self.tools_by_server.get(server_name, []))
            servers_info.append(ServerInfo(
                name=server_name,
                status="Connected",
                tools_count=tools_count
            ))
        return servers_info

    def get_tools_info(self) -> List[ToolInfo]:
        tools_info = []
        for server_name, tools in self.tools_by_server.items():
            for tool in tools:
                tools_info.append(ToolInfo(
                    name=tool.name,
                    description=tool.description,
                    server=server_name
                ))
        return tools_info

    async def close(self):
        logger.info("Closing all MCP server connections")
        await self._exit_stack.aclose()


# HTML template for the frontend
HTML_TEMPLATE = """
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Web MCP Client</title>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/marked/9.1.2/marked.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/prism/1.29.0/components/prism-core.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/prism/1.29.0/plugins/autoloader/prism-autoloader.min.js"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/prism/1.29.0/themes/prism-dark.min.css">

    <style>
 body {
    font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
    margin: 0;
    padding: 20px;
    background-color: #0f0f0f;
    min-height: 100vh;
    color: #d1d5db;
}
.container {
    max-width: 1200px;
    margin: 0 auto;
    background-color: #121212;
    border-radius: 15px;
    padding: 30px;
    box-shadow: 0 20px 40px rgba(0, 0, 0, 0.6);
}
.header {
    text-align: center;
    margin-bottom: 30px;
    color: #e5e7eb;
}
.header h1 {
    margin: 0;
    font-size: 2.5em;
    color: #22c55e; /* green accent */
}
.section {
    margin: 20px 0;
    padding: 20px;
    border: 1px solid #2c2c2c;
    border-radius: 10px;
    background-color: #1a1a1a;
}
.section h3 {
    margin-top: 0;
    color: #f1f1f1;
    border-bottom: 2px solid #22c55e;
    padding-bottom: 10px;
}
.form-group {
    margin: 15px 0;
}
label {
    display: block;
    margin-bottom: 5px;
    font-weight: 600;
    color: #d1d5db;
}
select, input, textarea, button {
    width: 100%;
    padding: 12px;
    border: 2px solid #2c2c2c;
    border-radius: 8px;
    font-size: 16px;
    background-color: #111;
    color: #e5e5e5;
    transition: all 0.3s ease;
    box-sizing: border-box;
}
select:focus, input:focus, textarea:focus {
    outline: none;
    border-color: #22c55e;
    box-shadow: 0 0 0 3px rgba(34, 197, 94, 0.4);
}
button {
    background-color: #22c55e;
    color: #0f0f0f;
    border: none;
    cursor: pointer;
    font-weight: 600;
    text-transform: uppercase;
    letter-spacing: 1px;
}
button:hover:not(:disabled) {
    transform: translateY(-2px);
    box-shadow: 0 10px 25px rgba(34, 197, 94, 0.4);
}
button:disabled {
    background-color: #374151;
    color: #9ca3af;
    cursor: not-allowed;
    transform: none;
    box-shadow: none;
}
.status {
    padding: 15px;
    border-radius: 8px;
    margin: 10px 0;
    font-weight: 600;
}
.status.success {
    background-color: #1e3a2a;
    color: #9ae6b4;
    border-left: 4px solid #22c55e;
}
.status.error {
    background-color: #3c1e1e;
    color: #feb2b2;
    border-left: 4px solid #ef4444;
}
.status.info {
    background-color: #1a2e1a;
    color: #a7f3d0;
    border-left: 4px solid #10b981;
}
.status.warning {
    background-color: #3a2c14;
    color: #fefcbf;
    border-left: 4px solid #f59e0b;
}
.chat-container {
    height: 400px;
    overflow-y: auto;
    border: 2px solid #2c2c2c;
    border-radius: 10px;
    padding: 20px;
    background-color: #111;
    margin-bottom: 15px;
}
.message {
    margin: 15px 0;
    padding: 15px;
    border-radius: 10px;
    animation: fadeIn 0.3s ease;
}
.message.user {
    background-color: #166534;
    color: white;
    margin-left: 20%;
}
.message.assistant {
    background-color: #1f1f1f;
    border: 1px solid #2c2c2c;
    color: #d1d5db;
    margin-right: 20%;
}
.message.system {
    background-color: #2a2a2a;
    border: 1px solid #3b3b3b;
    color: #9ca3af;
    font-style: italic;
}
@keyframes fadeIn {
    from { opacity: 0; transform: translateY(10px); }
    to { opacity: 1; transform: translateY(0); }
}
.grid {
    display: grid;
    grid-template-columns: 1fr 1fr;
    gap: 20px;
}
.table {
    width: 100%;
    border-collapse: collapse;
    margin-top: 10px;
}
.table th, .table td {
    padding: 12px;
    text-align: left;
    border-bottom: 1px solid #2c2c2c;
}
.table th {
    background-color: #1f1f1f;
    font-weight: 600;
    color: #e5e7eb;
}
.loading {
    display: none;
    text-align: center;
    padding: 20px;
}
.spinner {
    border: 4px solid #2c2c2c;
    border-top: 4px solid #22c55e;
    border-radius: 50%;
    width: 40px;
    height: 40px;
    animation: spin 1s linear infinite;
    margin: 0 auto 10px;
}
@keyframes spin {
    0% { transform: rotate(0deg); }
    100% { transform: rotate(360deg); }
}
.connection-status {
    padding: 10px;
    border-radius: 5px;
    margin-bottom: 15px;
    font-weight: 600;
}
.connected {
    background-color: #1e3a2a;
    color: #9ae6b4;
}
.disconnected {
    background-color: #3c1e1e;
    color: #feb2b2;
}
.endpoint-config {
    background-color: #111;
    padding: 15px;
    border-radius: 8px;
    margin-bottom: 15px;
}
.inline-form {
    display: flex;
    gap: 10px;
    align-items: end;
}
.inline-form .form-group {
    flex: 1;
    margin: 0;
}
.inline-form button {
    min-width: 120px;
    height: 48px;
}

/* Markdown rendering styles */
.message-content {
    line-height: 1.6;
}

.message-content h1, .message-content h2, .message-content h3, 
.message-content h4, .message-content h5, .message-content h6 {
    margin: 1em 0 0.5em 0;
    color: #22c55e;
}

.message-content h1 { font-size: 1.5em; }
.message-content h2 { font-size: 1.3em; }
.message-content h3 { font-size: 1.1em; }

.message-content p {
    margin: 0.8em 0;
}

.message-content ul, .message-content ol {
    margin: 0.8em 0;
    padding-left: 2em;
}

.message-content li {
    margin: 0.4em 0;
}

.message-content blockquote {
    border-left: 4px solid #22c55e;
    margin: 1em 0;
    padding: 0.5em 0 0.5em 1em;
    background-color: rgba(34, 197, 94, 0.1);
    border-radius: 0 5px 5px 0;
}

.message-content code {
    background-color: #1f1f1f;
    padding: 2px 6px;
    border-radius: 4px;
    font-family: 'Courier New', monospace;
    color: #22c55e;
    border: 1px solid #2c2c2c;
}

.message-content pre {
    background-color: #1f1f1f;
    border: 1px solid #2c2c2c;
    border-radius: 8px;
    padding: 1em;
    overflow-x: auto;
    margin: 1em 0;
}

.message-content pre code {
    background: none;
    border: none;
    padding: 0;
    color: inherit;
}

.message-content table {
    border-collapse: collapse;
    width: 100%;
    margin: 1em 0;
}

.message-content th, .message-content td {
    border: 1px solid #2c2c2c;
    padding: 8px 12px;
    text-align: left;
}

.message-content th {
    background-color: #1f1f1f;
    font-weight: 600;
}

.message-content a {
    color: #22c55e;
    text-decoration: none;
}

.message-content a:hover {
    text-decoration: underline;
}

.message-content strong {
    color: #f1f1f1;
    font-weight: 600;
}

.message-content em {
    color: #d1d5db;
    font-style: italic;
}

    </style>
</head>
<body>
    <div class="container">
        <div class="header">
            <h1>🌐 Web MCP Client</h1>
            <p>Model Context Protocol Client with Web Interface</p>
        </div>

        <!-- Initialization Section -->
        <div class="section">
            <h3>🚀 Initialize System</h3>
            <div class="form-group">
                <label for="modelSelect">Select LLM Model:</label>
                <select id="modelSelect">
                    <option value="">Click "Load Models" to fetch available models</option>
                </select>
            </div>
            <div class="inline-form">
                <button onclick="loadModels()" style="flex: 0 0 150px;">Load Models</button>
                <button id="initBtn" onclick="initializeSystem()" disabled>Initialize System</button>
            </div>
            <div id="initStatus"></div>
        </div>

        <!-- Chat Section -->
        <div class="section">
            <h3>💬 Chat Interface</h3>
            <div id="chatContainer" class="chat-container">
                <div class="message system">
                    Welcome! Please configure and initialize the system first.
                </div>
            </div>
            <div class="form-group">
                <textarea id="queryInput" placeholder="Enter your query..." rows="3" disabled></textarea>
            </div>
            <button id="sendBtn" onclick="sendQuery()" disabled>Send Query</button>
            <div class="loading" id="loadingIndicator">
                <div class="spinner"></div>
                <p>Processing your request...</p>
            </div>
        </div>

        <!-- System Info Section -->
        <div class="grid">
            <div class="section">
                <h3>🖥️ Connected Servers</h3>
                <div id="serversInfo">
                    <p>Initialize system to view server information</p>
                </div>
            </div>
            <div class="section">
                <h3>🔧 Available Tools</h3>
                <div id="toolsInfo">
                    <p>Initialize system to view available tools</p>
                </div>
            </div>
        </div>
    </div>

    <script>
        let systemInitialized = false;
        let apiEndpoint = 'http://localhost:8000';

        // Initialize on page load
        window.onload = function() {
            testConnection();
        };

        function getApiEndpoint() {
            return document.getElementById('apiEndpoint').value || 'http://localhost:8000';
        }

        async function loadModels() {
            const select = document.getElementById('modelSelect');
            const loadBtn = event.target;
            
            // Update UI
            loadBtn.disabled = true;
            loadBtn.textContent = 'Loading...';
            select.innerHTML = '<option value="">Loading models...</option>';
            
            try {
                const response = await fetch(`${apiEndpoint}/api/models`);
                
                if (!response.ok) {
                    throw new Error(`HTTP ${response.status}: ${response.statusText}`);
                }
                
                const models = await response.json();
                select.innerHTML = '';
                
                if (models && models.length > 0) {
                    models.forEach(model => {
                        const option = document.createElement('option');
                        option.value = model.name || model;
                        option.textContent = model.name || model;
                        select.appendChild(option);
                    });
                    showStatus('initStatus', `Loaded ${models.length} models successfully!`, 'success');
                    document.getElementById('initBtn').disabled = false;
                } else {
                    select.innerHTML = '<option value="">No models found - Check Ollama installation</option>';
                    showStatus('initStatus', 'No models found. Please install models in Ollama first.', 'warning');
                }
            } catch (error) {
                console.error('Error loading models:', error);
                select.innerHTML = '<option value="">Error loading models</option>';
                showStatus('initStatus', `Failed to load models: ${error.message}`, 'error');
            } finally {
                loadBtn.disabled = false;
                loadBtn.textContent = 'Load Models';
            }
        }

        async function initializeSystem() {
            const modelSelect = document.getElementById('modelSelect');
            const selectedModel = modelSelect.value;
            
            if (!selectedModel) {
                showStatus('initStatus', 'Please select a model first', 'error');
                return;
            }

            const initBtn = document.getElementById('initBtn');
            initBtn.disabled = true;
            initBtn.textContent = 'Initializing...';

            try {
                // Initialize LLM
                showStatus('initStatus', 'Initializing LLM...', 'info');
                const llmResponse = await fetch(`${apiEndpoint}/api/initialize-llm`, {
                    method: 'POST',
                    headers: { 'Content-Type': 'application/json' },
                    body: JSON.stringify({ model: selectedModel })
                });

                if (!llmResponse.ok) {
                    const error = await llmResponse.json().catch(() => ({}));
                    throw new Error(error.detail || `HTTP ${llmResponse.status}`);
                }

                // Initialize servers
                showStatus('initStatus', 'Initializing MCP servers...', 'info');
                const serversResponse = await fetch(`${apiEndpoint}/api/initialize-servers`, {
                    method: 'POST'
                });

                if (!serversResponse.ok) {
                    const error = await serversResponse.json().catch(() => ({}));
                    throw new Error(error.detail || `HTTP ${serversResponse.status}`);
                }

                // Create agent
                showStatus('initStatus', 'Creating agent...', 'info');
                const agentResponse = await fetch(`${apiEndpoint}/api/create-agent`, {
                    method: 'POST'
                });

                if (!agentResponse.ok) {
                    const error = await agentResponse.json().catch(() => ({}));
                    throw new Error(error.detail || `HTTP ${agentResponse.status}`);
                }

                showStatus('initStatus', 'System initialized successfully!', 'success');
                systemInitialized = true;
                document.getElementById('sendBtn').disabled = false;
                document.getElementById('queryInput').disabled = false;
                
                // Add success message to chat
                addMessage('System initialized successfully! You can now start chatting.', 'system');
                
                // Load system info
                await loadSystemInfo();

            } catch (error) {
                console.error('Initialization error:', error);
                showStatus('initStatus', `Initialization failed: ${error.message}`, 'error');
                addMessage(`Initialization failed: ${error.message}`, 'system');
            } finally {
                initBtn.disabled = false;
                initBtn.textContent = 'Initialize System';
            }
        }

        async function sendQuery() {
            if (!systemInitialized) {
                alert('Please initialize the system first');
                return;
            }

            const queryInput = document.getElementById('queryInput');
            const query = queryInput.value.trim();
            
            if (!query) {
                alert('Please enter a query');
                return;
            }

            // Add user message to chat
            addMessage(query, 'user');
            queryInput.value = '';

            // Show loading indicator
            document.getElementById('loadingIndicator').style.display = 'block';
            document.getElementById('sendBtn').disabled = true;
            document.getElementById('queryInput').disabled = true;

            try {
                const response = await fetch(`${apiEndpoint}/api/query`, {
                    method: 'POST',
                    headers: { 'Content-Type': 'application/json' },
                    body: JSON.stringify({ query: query })
                });

                if (!response.ok) {
                    const error = await response.json().catch(() => ({}));
                    throw new Error(error.detail || `HTTP ${response.status}`);
                }

                const result = await response.json();
                addMessage(result.response || result.message || 'No response received', 'assistant');

            } catch (error) {
                console.error('Query error:', error);
                addMessage(`Error: ${error.message}`, 'assistant');
            } finally {
                document.getElementById('loadingIndicator').style.display = 'none';
                document.getElementById('sendBtn').disabled = false;
                document.getElementById('queryInput').disabled = false;
            }
        }

        function addMessage(content, type) {
    const chatContainer = document.getElementById('chatContainer');
    const messageDiv = document.createElement('div');
    messageDiv.className = `message ${type}`;
    
    const contentDiv = document.createElement('div');
    contentDiv.className = 'message-content';
    
    if (type === 'assistant' || type === 'system') {
        // Configure marked for better rendering
        marked.setOptions({
            gfm: true,
            breaks: true,
            highlight: function(code, lang) {
                if (lang && Prism.languages[lang]) {
                    return Prism.highlight(code, Prism.languages[lang], lang);
                }
                return code;
            }
        });
        
        // Render markdown to HTML
        contentDiv.innerHTML = marked.parse(content);
        
        // Highlight code blocks
        setTimeout(() => {
            Prism.highlightAllUnder(contentDiv);
        }, 10);
    } else {
        // For user messages, keep as plain text but preserve line breaks
        contentDiv.textContent = content;
        contentDiv.style.whiteSpace = 'pre-wrap';
    }
    
    messageDiv.appendChild(contentDiv);
    chatContainer.appendChild(messageDiv);
    chatContainer.scrollTop = chatContainer.scrollHeight;
}

        async function loadSystemInfo() {
            try {
                // Load servers info
                const serversResponse = await fetch(`${apiEndpoint}/api/servers`);
                if (serversResponse.ok) {
                    const servers = await serversResponse.json();
                    
                    let serversHtml = '<table class="table"><tr><th>Server</th><th>Status</th><th>Tools</th></tr>';
                    servers.forEach(server => {
                        serversHtml += `<tr><td>${server.name}</td><td>${server.status}</td><td>${server.tools_count || 0}</td></tr>`;
                    });
                    serversHtml += '</table>';
                    document.getElementById('serversInfo').innerHTML = serversHtml;
                } else {
                    document.getElementById('serversInfo').innerHTML = '<p class="status error">Failed to load server information</p>';
                }

                // Load tools info
                const toolsResponse = await fetch(`${apiEndpoint}/api/tools`);
                if (toolsResponse.ok) {
                    const tools = await toolsResponse.json();
                    
                    let toolsHtml = '<table class="table"><tr><th>Tool</th><th>Server</th><th>Description</th></tr>';
                    tools.forEach(tool => {
                        const description = tool.description || 'No description available';
                        toolsHtml += `<tr><td>${tool.name}</td><td>${tool.server || 'Unknown'}</td><td>${description}</td></tr>`;
                    });
                    toolsHtml += '</table>';
                    document.getElementById('toolsInfo').innerHTML = toolsHtml;
                } else {
                    document.getElementById('toolsInfo').innerHTML = '<p class="status error">Failed to load tools information</p>';
                }

            } catch (error) {
                console.error('Error loading system info:', error);
                document.getElementById('serversInfo').innerHTML = '<p class="status error">Error loading server information</p>';
                document.getElementById('toolsInfo').innerHTML = '<p class="status error">Error loading tools information</p>';
            }
        }

        function showStatus(elementId, message, type) {
            const element = document.getElementById(elementId);
            element.innerHTML = `<div class="status ${type}">${message}</div>`;
        }

        // Allow sending query with Enter key (Shift+Enter for new line)
        document.getElementById('queryInput').addEventListener('keydown', function(e) {
            if (e.key === 'Enter' && !e.shiftKey) {
                e.preventDefault();
                if (!this.disabled) {
                    sendQuery();
                }
            }
        });

        // Test connection function (referenced in HTML but not defined)
        async function testConnection() {
            // This function was referenced but not implemented in the original code
            // Adding a basic implementation
            try {
                const response = await fetch(`${apiEndpoint}/api/models`);
                console.log('API connection test:', response.ok ? 'Success' : 'Failed');
            } catch (error) {
                console.log('API connection test failed:', error.message);
            }
        }
    </script>
</body>
</html>
"""

# Startup event to initialize client with proper config
@app.on_event("startup")
async def startup_event():
    global client
    client = WebMCPClient(CONFIG_PATH)
    logger.info(f"Application started with config: {CONFIG_PATH}")

# Routes
@app.get("/", response_class=HTMLResponse)
async def get_homepage():
    return HTML_TEMPLATE

@app.get("/api/models")
async def get_models():
    models = await client.get_ollama_models()
    return [ModelInfo(name=model) for model in models]

@app.post("/api/initialize-llm")
async def initialize_llm(request: dict):
    model = request.get("model")
    if not model:
        raise HTTPException(status_code=400, detail="Model name is required")
    
    success = await client.initialize_llm(model)
    if not success:
        raise HTTPException(status_code=500, detail="Failed to initialize LLM")
    
    return {"status": "success", "message": f"LLM initialized with model: {model}"}

@app.post("/api/initialize-servers")
async def initialize_servers():
    success = await client.initialize_servers()
    if not success:
        raise HTTPException(status_code=500, detail="Failed to initialize MCP servers")
    
    return {"status": "success", "message": "MCP servers initialized"}

@app.post("/api/create-agent")
async def create_agent():
    success = await client.create_agent()
    if not success:
        raise HTTPException(status_code=500, detail="Failed to create agent")
    
    return {"status": "success", "message": "Agent created successfully"}

@app.post("/api/query")
async def process_query(request: QueryRequest):
    response = await client.run_interaction(request.query)
    return {"response": response}

@app.get("/api/servers")
async def get_servers():
    return client.get_servers_info()

@app.get("/api/tools")
async def get_tools():
    return client.get_tools_info()

# Cleanup on shutdown
@app.on_event("shutdown")
async def shutdown_event():
    await client.close()

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