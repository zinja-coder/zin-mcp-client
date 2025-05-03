<div align="center">

# ZIN-MCP-CLIENT (Part of Zin's MCP Suite)

⚡ Lightweight, Fast, Simple, CLI-Based MCP Client for STDIO MCP Servers, to fill the gap and provide bridge between your local LLMs running Ollama and MCP Servers.

![GitHub contributors JADX-AI-MCP](https://img.shields.io/github/contributors/zinja-coder/zin-mcp-client)
![GitHub contributors JADX-MCP-SERVER](https://img.shields.io/github/contributors/zinja-coder/zin-mcp-client)
![GitHub all releases](https://img.shields.io/github/downloads/zinja-coder/zin-mcp-client/total)
![GitHub release (latest by SemVer)](https://img.shields.io/github/downloads/zinja-coder/zin-mcp-client/latest/total)
![Latest release](https://img.shields.io/github/release/zinja-coder/zin-mcp-client.svg)
![Python 3.10+](https://img.shields.io/badge/python-3%2E10%2B-blue)
[![License](http://img.shields.io/:license-apache-blue.svg)](http://www.apache.org/licenses/LICENSE-2.0.html)

</div>

<!-- It is a still in early stage of development, so expects bugs, crashes and logical erros.-->

<!-- Standalone Plugin for [JADX](https://github.com/skylot/jadx) (Started as Fork) with Model Context Protocol (MCP) integration for AI-powered static code analysis and real-time code review and reverse engineering tasks using Claude.-->

<div align="center">
    <img alt="banner" height="480px" widht="620px" src="https://github.com/user-attachments/assets/0e8e0ecd-0520-422e-a007-03dc62c4118e">
</div>

 Image generated using AI tools.

---

## 🤖 What is ZIN MCP Client?

A powerful yet lightweight, fast, simple and flexible client for interacting with MCP (Model Context Protocol) servers through local LLMs. This tool allows you to connect to and utilize various tools from multiple MCP servers through an easy-to-use command-line interface.

Watch the demos!


# Features

- **Multi-Server Support:** Connect to multiple MCP servers simultaneously
- **Local LLM Integration:** Use local LLMs via Ollama for privacy and control
- **Interactive CLI:** Clean, intuitive command-line interface with rich formatting
- **Comprehensive Logging:** Detailed logs for debugging and troubleshooting
- **ReAct Agent Framework:** Utilizes LangChain's ReAct agent pattern to intelligently invoke tools
- **Cross Platform:** Cross Platform Support
- **Simple, Fast, Lightweight:** It is simple, it is fast, it is lightweight

---

# Check the Zin MCP Suite
 - **[APKTool-MCP-Server](https://github.com/zinja-coder/apktool-mcp-server)**
 - **[JADX-MCP-Server](https://github.com/zinja-coder/jadx-mcp-server)**


## 🛠️ Getting Started 

Installation Video

### 1. Downlaod from Releases: https://github.com/zinja-coder/zin-mcp-client/releases

```bash
# 1. 
unzip zin-mcp-client-<version>.zip

├zin-mcp-client/
  ├── zin_mcp_client.py
  ├── src/
  ├── README.md
  ├── LICENSE

# 2. Install the plugin

# For this you can follow two approaches:

## 1. One liner - execute below command in your shell
jadx plugins --install "github:zinja-coder:jadx-ai-mcp"

## The above one line code will install the latest version of the plugin directly into the jadx, no need to download the jadx-ai-mcp's .jar file.
## 2. Or you can use JADX-GUI to install it by following images as shown below:
```
![img.png](docs/assets/img_1231.png)
![img_1.png](docs/assets/img_1123.png)
![img_2.png](docs/assets/img_2122.png)

```bash
## 3. GUI method, download the .jar file and follow below steps shown in images
```
![img.png](docs/assets/img123.png)
![img_1.png](docs/assets/img_12.png)
![img_2.png](docs/assets/img_2.png)
![img_3.png](docs/assets/img_3.png)
```bash
# 3. Navigate to jadx-mcp-server directory
cd jadx-mcp-server

# 4. This project uses uv - https://github.com/astral-sh/uv instead of pip for dependency management.
    ## a. Install uv (if you dont have it yet)
curl -LsSf https://astral.sh/uv/install.sh | sh
    ## b. OPTIONAL, if for any reasons, you get dependecy errors in jadx-mcp-server, Set up the environment
uv venv
source .venv/bin/activate  # or .venv\Scripts\activate on Windows
    ## c. OPTIONAL Install dependencies
uv pip install httpx fastmcp

# The setup for jadx-ai-mcp and jadx_mcp_server is done.
```

## 🤖 2. Claude Desktop Setup

Make sure Claude Desktop is running with MCP enabled.

For instance, I have used following for Kali Linux: https://github.com/aaddrick/claude-desktop-debian

Configure and add MCP server to LLM file:
```bash
nano ~/.config/Claude/claude_desktop_config.json
```

For:
   - Windows: `%APPDATA%\Claude\claude_desktop_config.json`
   - macOS: `~/Library/Application Support/Claude/claude_desktop_config.json`
   
And following content in it:
```json
{
    "mcpServers": {
        "jadx-mcp-server": {
            "command": "/<path>/<to>/uv", 
            "args": [
                "--directory",
                "</PATH/TO/>jadx-mcp-server/",
                "run",
                "jadx_mcp_server.py"
            ]
        }
    }
}
```

Replace:

- `path/to/uv` with the actual path to your `uv` executable
- `path/to/jadx-mcp-server` with the absolute path to where you cloned this
repository

Then, navigate code and interact via real-time code review prompts using the built-in integration.

## Give it a shot

1. Run jadx-gui and load any .apk file

![img_1.png](docs/assets/img_1.png)

2. Start claude - You must see hammer symbol

![img2.png](docs/assets/img2.png)

3. Click on the `hammer` symbol and you should you see somthing like following:

![img3.png](docs/assets/img3.png)

4. Run following prompt:
```text
fetch currently selected class and perform quick sast on it
```
![img4.png](docs/assets/img4.png)

5. Allow access when prompted:

![img_1.png](docs/assets/img5.png)

6. HACK!

![img_2.png](docs/assets/img6.png)

This plugin allows total control over the GUI and internal project model to support deeper LLM integration, including:

- Exporting selected class to MCP
- Running automated Claude analysis
- Receiving back suggestions inline

---

## Running on Local LLM Using Ollama and Custom MPC Client

!Coming Soon...

## Running on Local LLM using Ollama and Open Web UI

Current State Of Local LLM and MCPs:

Currently, proprietary API-based models like Anthropic’s Claude tend to be more proficient proficient at tool calling. 

However, the open-source world is advancing rapidly! Models specifically fine-tuned on function calling datasets are becoming increasingly available through Ollama. Researching models tagged with `function calling` or `tool use` on platforms like Hugging Face or [checking discussions on communities like r/LocalLLaMA is key to finding capable local options.](https://www.reddit.com/r/LocalLLaMA/search/?q=Best+open+source+LLM+for+function+calling+mcp&cId=c72f65d2-d327-41b0-8e6d-73e889385cda&iId=795a5a92-245d-42d2-ae60-47dfff7dbef0)

Putting these aside, Here is a step by step guide on how to run the MCP server with Local LLM so you don't have to share your critical pentesting data with remote LLM Provider.

<div align="center">
  <a href="https://ollama.com">
    <img alt="ollama" height="200px" src="https://github.com/ollama/ollama/assets/3325447/0d0b44e2-8f4a-4e99-9b52-a5c1c741c8f7">
  </a>
</div>

```bash
1. Download and Install ollama: https://ollama.com/download

If you are on linux you can directly run below command to install it:

> curl -fsSL https://ollama.com/install.sh | sh

2. Download and run any LLM that has capability to invoke tool.

For example, the llama 3.1 has capability to invoke the tool. However, during testing I was not able to invoke tool via llama.3.1 and so for this example I am using gemma3:4b [Again this whole setup is based on LLM Capabilities]

You can run it using following command:

> ollama run gemma3:4b

[Note]: Kindly note the above command will fetch the model with 4b parameters. If you have stronger hardware kindly fetch higher parameter model for better performance.

3. Serve the Ollama on API server using following command

> ollama serve

This will serve the ollama api on port 1134, you can confirm that it running using `curl` command as following:

> curl http://localhost:11434/                                                                                                                                              18:54:00
`Ollama is running`

4. Download and run Open Web UI: https://github.com/open-webui/open-webui

Kindly visit the github repo of Open Web UI and run it as per your requirement, for quick start, I like to run following command to run it using docker:

> docker run -d --network=host -v open-webui:/app/backend/data -e OLLAMA_BASE_URL=http://127.0.0.1:11434 -e WEBUI_AUTH=False --name open-webui --restart always ghcr.io/open-webui/open-webui:main

After running above command head over to http://localhost:8080/ and you will be able to see Open Web UI screen as shown in Image below:

```
<div align="center">
  <a href="https://ollama.com">
    <img alt="ollama" src="https://github.com/user-attachments/assets/7c520551-e178-41d3-afd2-903b11b68bda">
  </a>
</div>

If you don't see the gemma:3.4B as shown in image above, check the troubleshooting guide from Open Web UI: https://docs.openwebui.com/troubleshooting/

You must also observe the hammer icon indicating the availability of the tool.

![image](https://github.com/user-attachments/assets/3aaa9be0-050a-494e-8108-46222f1dbb3f)

If not avaiable, then got `Settings -> Admin Panel -> Settings -> Tools` and verify the URL of the MCP Server.

![image](https://github.com/user-attachments/assets/5c3d1e76-c7e0-412a-94c8-1be320489644)

If everyhting is good, You must also see the traffic logs on MCP Server as well

![image](https://github.com/user-attachments/assets/9cf8da8e-c953-4b7c-954d-6c9607e91ad5)

Now enter the prompt to invoke the MCP tool like following.

![image](https://github.com/user-attachments/assets/c557038d-2ba5-4983-9fb2-f912b1d0c21a)

The Local LLM based on it's capability must have invoked the MCP tool as shown in above image.

If not then again, Open Source LLMs are still catching up with tool inoking capabilities and soon we will have models with Strong tool calling capabilities.

Aletrnative and better approach is to create a custom MCP Client to and use it with MCP Server. 

## 🛣️ Future Roadmap

- [x] Add Support for apktool

 - [ ] Add support for hermes code (ReactNative Application)

 - [ ] Add more useful MCP Tools

 - [ ] Make LLM be able to modify code on JADX

 - [ ] Add prompts templates, give llm access to Android APK Files as Resources

 - [ ] Build MCP Client to support Local LLM

 - [ ] **END-GOAL** : Make all android reverse engineering and APK modification tools Connect with single MCP server to make reverse engineering apk files as easy as possible purely from vibes.


## NOTE For Contributors

 - The files related to JADX-AI-MCP can be found under this repo.

 - The files related to **jadx-mcp-server** can be found [here](https://github.com/zinja-coder/jadx-mcp-server).

## To report bugs, issues, feature suggestion, Performance issue, general question, Documentation issue.
 - Kindly open an issue with respective template.

 - Tested on Claude Desktop Client, support for other AI will be tested soon!

## 🙏 Credits

This project is a plugin for JADX, an amazing open-source Android decompiler created and maintained by [@skylot](https://github.com/skylot). All core decompilation logic belongs to them. I have only extended it to support my MCP server with AI capabilities.

[📎 Original README (JADX)](https://github.com/skylot/jadx)

The original README.md from jadx is included here in this repository for reference and credit.

This MCP server is made possible by the extensibility of JADX-GUI and the amazing Android reverse engineering community.

Also huge thanks to [@aaddrick](https://github.com/aaddrick) for developing Claude desktop for Debian based linux.

And in last thanks to [@anthropics](https://github.com/anthropics) for developing the Model Context Protocol and [@FastMCP](https://github.com/modelcontextprotocol/python-sdk) team

Apart from this, huge thanks to all open source projects which serve as a dependencies for this project and which made this possible.

## 📄 License

JADX-AI-MCP and all related projects inherits the Apache 2.0 License from the original JADX repository.

## ⚖️ Legal Warning

**Disclaimer**

The tools `jadx-ai-mcp` and `jadx_mcp_server` are intended strictly for educational, research, and ethical security assessment purposes. They are provided "as-is" without any warranties, expressed or implied. Users are solely responsible for ensuring that their use of these tools complies with all applicable laws, regulations, and ethical guidelines.

By using `jadx-ai-mcp` or `jadx_mcp_server`, you agree to use them only in environments you are authorized to test, such as applications you own or have explicit permission to analyze. Any misuse of these tools for unauthorized reverse engineering, infringement of intellectual property rights, or malicious activity is strictly prohibited.

The developers of `jadx-ai-mcp` and `jadx_mcp_server` shall not be held liable for any damage, data loss, legal consequences, or other consequences resulting from the use or misuse of these tools. Users assume full responsibility for their actions and any impact caused by their usage.

Use responsibly. Respect intellectual property. Follow ethical hacking practices.

---

## 🙌 Contribute or Support

- Found it useful? Give it a ⭐️
- Got ideas? Open an [issue](https://github.com/zinja-coder/jadx-ai-mcp/issues) or submit a PR
- Built something on top? DM me or mention me — I’ll add it to the README!
- Do you like my work and keep it going? Sponsor this project.
  
---

Built with ❤️ for the reverse engineering and AI communities.
