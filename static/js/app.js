// Global variables to track system state
let currentActiveServers = [];
let systemStatus = {
    llm_initialized: false,
    agent_created: false,
    active_servers: []
};
let systemInitialized = false;
let apiEndpoint = 'http://localhost:8000';
let availableServers = [];


// Initialize on page load
window.onload = function() {
    testConnection();
    loadModels();
    loadAvailableServers();
};

function getApiEndpoint() {
    return document.getElementById('apiEndpoint') ? 
        document.getElementById('apiEndpoint').value || 'http://localhost:8000' : 
        'http://localhost:8000';
}

async function loadModels() {
    const select = document.getElementById('modelSelect');
    const loadBtn = document.getElementById('loadModelsBtn');
    
    if (loadBtn) {
        loadBtn.disabled = true;
        loadBtn.textContent = 'Loading...';
    }
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
        if (loadBtn) {
            loadBtn.disabled = false;
            loadBtn.textContent = 'Load Models';
        }
    }
}

async function loadAvailableServers() {
    const container = document.getElementById('serverCheckboxes');
    const loadBtn = document.getElementById('loadServersBtn');
    
    if (loadBtn) {
        loadBtn.disabled = true;
        loadBtn.textContent = 'Loading...';
    }
    container.innerHTML = '<p>Loading available servers...</p>';
    
    try {
        const response = await fetch(`${apiEndpoint}/api/available-servers`);
        
        if (!response.ok) {
            throw new Error(`HTTP ${response.status}: ${response.statusText}`);
        }
        
        const data = await response.json();
        availableServers = data.servers;
        
        if (availableServers && availableServers.length > 0) {
            let checkboxHtml = '';
            availableServers.forEach(server => {
                checkboxHtml += `
                    <div class="server-checkbox-item">
                        <input type="checkbox" id="server_${server}" value="${server}" checked>
                        <label for="server_${server}">${server}</label>
                    </div>
                `;
            });
            container.innerHTML = checkboxHtml;
            showStatus('initStatus', `Found ${availableServers.length} available servers`, 'success');
        } else {
            container.innerHTML = '<p>No MCP servers found in configuration</p>';
            showStatus('initStatus', 'No MCP servers found in configuration', 'warning');
        }
    } catch (error) {
        console.error('Error loading available servers:', error);
        container.innerHTML = '<p>Error loading servers</p>';
        showStatus('initStatus', `Failed to load servers: ${error.message}`, 'error');
    } finally {
        if (loadBtn) {
            loadBtn.disabled = false;
            loadBtn.textContent = 'Load Available Servers';
        }
    }
}

function getSelectedServers() {
    const checkboxes = document.querySelectorAll('#serverCheckboxes input[type="checkbox"]:checked');
    return Array.from(checkboxes).map(cb => cb.value);
}

async function initializeSystem() {
    const modelSelect = document.getElementById('modelSelect');
    const selectedModel = modelSelect.value;
    
    if (!selectedModel) {
        showStatus('initStatus', 'Please select a model first', 'error');
        return;
    }

    const selectedServers = getSelectedServers();
    if (selectedServers.length === 0) {
        showStatus('initStatus', 'Please select at least one MCP server', 'error');
        return;
    }

    const isReinit = systemInitialized && currentActiveServers.length > 0;
    const serversChanged = JSON.stringify(selectedServers.sort()) !== JSON.stringify(currentActiveServers.sort());
    
    if (isReinit && !serversChanged) {
        showStatus('initStatus', 'Server selection unchanged. No reinitialization needed.', 'info');
        return;
    }

    const initBtn = document.getElementById('initBtn');
    
    document.getElementById('sendBtn').disabled = true;
    document.getElementById('queryInput').disabled = true;

    try {
        if (!systemInitialized || isReinit) {
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
        }

        const action = isReinit ? 'Reinitializing' : 'Initializing';
        showStatus('initStatus', `${action} selected MCP servers: ${selectedServers.join(', ')}...`, 'info');
        
        if (isReinit) {
            addMessage(`${action} system with new server selection: ${selectedServers.join(', ')}. Previous agent will be replaced.`, 'system');
        }

        const serversResponse = await fetch(`${apiEndpoint}/api/initialize-servers`, {
            method: 'POST',
            headers: { 'Content-Type': 'application/json' },
            body: JSON.stringify({ server_names: selectedServers })
        });

        if (!serversResponse.ok) {
            const error = await serversResponse.json().catch(() => ({}));
            throw new Error(error.detail || `HTTP ${serversResponse.status}`);
        }

        const serverResult = await serversResponse.json();

        showStatus('initStatus', 'Creating agent...', 'info');
        const agentResponse = await fetch(`${apiEndpoint}/api/create-agent`, {
            method: 'POST'
        });

        if (!agentResponse.ok) {
            const error = await agentResponse.json().catch(() => ({}));
            throw new Error(error.detail || `HTTP ${agentResponse.status}`);
        }

        showStatus('initStatus', `System ${serverResult.action} successfully with servers: ${selectedServers.join(', ')}!`, 'success');
        systemInitialized = true;
        currentActiveServers = [...selectedServers];
        
        document.getElementById('sendBtn').disabled = false;
        document.getElementById('queryInput').disabled = false;
        
        const actionPast = serverResult.action === 'reinitialized' ? 'reinitialized' : 'initialized';
        addMessage(`System ${actionPast} successfully with MCP servers: ${selectedServers.join(', ')}! You can now start chatting.`, 'system');
        
        await loadSystemInfo();

    } catch (error) {
        console.error(`${isReinit ? 'Reinitialization' : 'Initialization'} error:`, error);
        const action = isReinit ? 'Reinitialization' : 'Initialization';
        showStatus('initStatus', `${action} failed: ${error.message}`, 'error');
        addMessage(`${action} failed: ${error.message}`, 'system');
        
        if (systemInitialized && isReinit) {
            document.getElementById('sendBtn').disabled = false;
            document.getElementById('queryInput').disabled = false;
        }
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

    addMessage(query, 'user');
    queryInput.value = '';

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
        
        contentDiv.innerHTML = marked.parse(content);
        
        setTimeout(() => {
            Prism.highlightAllUnder(contentDiv);
        }, 10);
    } else {
        contentDiv.textContent = content;
        contentDiv.style.whiteSpace = 'pre-wrap';
    }
    
    messageDiv.appendChild(contentDiv);
    chatContainer.appendChild(messageDiv);
    chatContainer.scrollTop = chatContainer.scrollHeight;
}

async function loadSystemInfo() {
    try {
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


async function loadAvailableTools() {
    const container = document.getElementById('toolCheckboxes');
    container.innerHTML = '<p>Loading available tools...</p>';
    
    try {
        const response = await fetch(`${apiEndpoint}/api/available-tools`);
        
        if (!response.ok) {
            throw new Error(`HTTP ${response.status}: ${response.statusText}`);
        }
        
        const data = await response.json();
        availableTools = data.tools;
        
        if (availableTools && availableTools.length > 0) {
            let checkboxHtml = '';
            availableTools.forEach(tool => {
                checkboxHtml += `
                    <div class="tool-checkbox-item">
                        <input type="checkbox" id="tool_${tool.name}" value="${tool.name}" checked>
                        <label for="tool_${tool.name}" title="${tool.description}">
                            ${tool.name} <small>(${tool.server})</small>
                        </label>
                    </div>
                `;
            });
            container.innerHTML = checkboxHtml;
            document.getElementById('toolSelectionSection').style.display = 'block';
        } else {
            container.innerHTML = '<p>No tools available</p>';
        }
    } catch (error) {
        console.error('Error loading available tools:', error);
        container.innerHTML = '<p>Error loading tools</p>';
    }
}

function getSelectedTools() {
    const checkboxes = document.querySelectorAll('#toolCheckboxes input[type="checkbox"]:checked');
    return Array.from(checkboxes).map(cb => cb.value);
}

function showStatus(elementId, message, type) {
    const element = document.getElementById(elementId);
    element.innerHTML = `<div class="status ${type}">${message}</div>`;
}

// Allow sending query with Enter key (Shift+Enter for new line)
document.addEventListener('DOMContentLoaded', function() {
    const queryInput = document.getElementById('queryInput');
    if (queryInput) {
        queryInput.addEventListener('keydown', function(e) {
            if (e.key === 'Enter' && !e.shiftKey) {
                e.preventDefault();
                if (!this.disabled) {
                    sendQuery();
                }
            }
        });
    }
});

async function testConnection() {
    try {
        const response = await fetch(`${apiEndpoint}/api/models`);
        console.log('API connection test:', response.ok ? 'Success' : 'Failed');
    } catch (error) {
        console.log('API connection test failed:', error.message);
    }
}