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


// Initialize everything when DOM is loaded
document.addEventListener('DOMContentLoaded', function() {
    initializeSidebar();
    initializeTextarea();
    
    // Update the existing window.onload to include new initialization
    testConnection();
    loadModels();
    loadAvailableServers();
});

function getApiEndpoint() {
    return document.getElementById('apiEndpoint') ? 
        document.getElementById('apiEndpoint').value || 'http://localhost:8000' : 
        'http://localhost:8000';
}

// Enhanced sidebar and hamburger menu functionality
function initializeSidebar() {
    const sidebar = document.getElementById('sidebar');
    const hamburgerMenuBtn = document.getElementById('hamburgerMenuBtn');
    const sidebarCloseBtn = document.getElementById('sidebarCloseBtn');
    const sidebarOverlay = document.getElementById('sidebarOverlay');
    
    // Open sidebar
    function openSidebar() {
        sidebar.classList.add('active');
        sidebarOverlay.classList.add('active');
        hamburgerMenuBtn.classList.add('active');
        document.body.style.overflow = 'hidden'; // Prevent body scroll
        const mainContent = document.getElementById('mainContent');
        if (mainContent) {
            mainContent.classList.add('sidebar-open');
            console.log('sidebar-open added');
        } else {
            console.log('mainContent not found');
        }
    }
    
    // Close sidebar
    function closeSidebar() {
        sidebar.classList.remove('active');
        sidebarOverlay.classList.remove('active');
        hamburgerMenuBtn.classList.remove('active');
        document.body.style.overflow = ''; // Restore body scroll
        const mainContent = document.getElementById('mainContent');
        if (mainContent) {
            mainContent.classList.remove('sidebar-open');
            console.log('sidebar-open removed');
        } else {
            console.log('mainContent not found');
        }
    }
    
    // Hamburger menu toggle
    hamburgerMenuBtn?.addEventListener('click', (e) => {
        e.stopPropagation();
        if (sidebar.classList.contains('active')) {
            closeSidebar();
        } else {
            openSidebar();
        }
    });
    
    // Close button in sidebar
    sidebarCloseBtn?.addEventListener('click', closeSidebar);
    
    // Close sidebar when clicking overlay
    sidebarOverlay?.addEventListener('click', closeSidebar);
    
    // Close sidebar when pressing Escape key
    document.addEventListener('keydown', (e) => {
        if (e.key === 'Escape' && sidebar.classList.contains('active')) {
            closeSidebar();
        }
    });
    
    // Handle window resize
    window.addEventListener('resize', () => {
        if (window.innerWidth > 768 && sidebar.classList.contains('active')) {
            closeSidebar();
        }
    });
    
    // Close sidebar when clicking on main content links/buttons (for better UX)
    document.addEventListener('click', (e) => {
        if (sidebar.classList.contains('active') && 
            !sidebar.contains(e.target) && 
            !hamburgerMenuBtn.contains(e.target)) {
            closeSidebar();
        }
    });
}


// Accordion functionality
function toggleAccordion(accordionId) {
    const accordion = document.getElementById(accordionId);
    const isActive = accordion.classList.contains('active');
    
    // Close all accordions
    document.querySelectorAll('.accordion-content').forEach(acc => {
        acc.classList.remove('active');
    });
    
    // Open clicked accordion if it wasn't active
    if (!isActive) {
        accordion.classList.add('active');
    }
}

// Auto-resize textarea
function initializeTextarea() {
    const textarea = document.getElementById('queryInput');
    
    textarea.addEventListener('input', function() {
        // Reset height to calculate new height
        this.style.height = 'auto';
        
        // Set new height based on scroll height
        const newHeight = Math.min(this.scrollHeight, 200);
        this.style.height = newHeight + 'px';
    });
    
    // Handle Enter key for sending
    textarea.addEventListener('keydown', function(e) {
        if (e.key === 'Enter' && !e.shiftKey) {
            e.preventDefault();
            if (!this.disabled && this.value.trim()) {
                sendQuery();
            }
        }
    });
}

// Enhanced message rendering with avatars
function addMessage(content, type) {
    const chatContainer = document.getElementById('chatContainer');
    const messageDiv = document.createElement('div');
    messageDiv.className = `message ${type}`;
    
    // Create avatar
    const avatarDiv = document.createElement('div');
    avatarDiv.className = 'message-avatar';
    
    switch(type) {
        case 'user':
            avatarDiv.textContent = '👤';
            break;
        case 'assistant':
            avatarDiv.textContent = '🤖';
            break;
        case 'system':
            avatarDiv.textContent = '⚙️';
            break;
        default:
            avatarDiv.textContent = '💬';
    }
    
    // Create content
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
    
    messageDiv.appendChild(avatarDiv);
    messageDiv.appendChild(contentDiv);
    chatContainer.appendChild(messageDiv);
    
    // Smooth scroll to bottom
    chatContainer.scrollTo({
        top: chatContainer.scrollHeight,
        behavior: 'smooth'
    });
}

// Enhanced loading indicator
function showLoading(show = true) {
    const loadingIndicator = document.getElementById('loadingIndicator');
    const sendBtn = document.getElementById('sendBtn');
    const queryInput = document.getElementById('queryInput');
    
    if (show) {
        loadingIndicator.style.display = 'flex';
        sendBtn.disabled = true;
        queryInput.disabled = true;
    } else {
        loadingIndicator.style.display = 'none';
        sendBtn.disabled = false;
        queryInput.disabled = false;
    }
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

// Enhanced initialization with better status feedback
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

    // Update status indicator
    updateConnectionStatus(true, 'Initializing...');
    
    const initBtn = document.getElementById('initBtn');
    const originalText = initBtn.textContent;
    initBtn.disabled = true;
    initBtn.textContent = 'Initializing...';
    
    document.getElementById('sendBtn').disabled = true;
    document.getElementById('queryInput').disabled = true;

    try {
        if (!systemInitialized || isReinit) {
            showStatus('initStatus', 'Initializing LLM...', 'info');
            updateConnectionStatus(true, 'Loading Model...');
            
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
        updateConnectionStatus(true, 'Loading Servers...');
        
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
        updateConnectionStatus(true, 'Creating Agent...');
        
        const agentResponse = await fetch(`${apiEndpoint}/api/create-agent`, {
            method: 'POST'
        });

        if (!agentResponse.ok) {
            const error = await agentResponse.json().catch(() => ({}));
            throw new Error(error.detail || `HTTP ${agentResponse.status}`);
        }

        showStatus('initStatus', `System ${serverResult.action} successfully with servers: ${selectedServers.join(', ')}!`, 'success');
        updateConnectionStatus(true, 'Ready');
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
        updateConnectionStatus(false, 'Error');
        addMessage(`${action} failed: ${error.message}`, 'system');
        
        if (systemInitialized && isReinit) {
            document.getElementById('sendBtn').disabled = false;
            document.getElementById('queryInput').disabled = false;
            updateConnectionStatus(true, 'Ready');
        }
    } finally {
        initBtn.disabled = false;
        initBtn.textContent = originalText;
    }
}

// Enhanced status indicator functionality
function updateConnectionStatus(isConnected, statusText = '') {
    const connectionIndicator = document.getElementById('connectionStatus');
    const statusTextElement = document.getElementById('statusText');
    
    if (connectionIndicator) {
        connectionIndicator.className = isConnected ? 'connection-indicator' : 'connection-indicator disconnected';
    }
    
    if (statusTextElement && statusText) {
        statusTextElement.textContent = statusText;
    }
}


// Update the existing sendQuery function to use new loading indicator
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
    queryInput.style.height = 'auto'; // Reset textarea height

    showLoading(true);

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
        showLoading(false);
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

// Enhanced test connection with status update
async function testConnection() {
    updateConnectionStatus(false, 'Connecting...');
    
    try {
        const response = await fetch(`${apiEndpoint}/api/models`);
        const isConnected = response.ok;
        
        updateConnectionStatus(isConnected, isConnected ? 'Connected' : 'Connection Failed');
        
        console.log('API connection test:', isConnected ? 'Success' : 'Failed');
        return isConnected;
    } catch (error) {
        updateConnectionStatus(false, 'Offline');
        console.log('API connection test failed:', error.message);
        return false;
    }
}