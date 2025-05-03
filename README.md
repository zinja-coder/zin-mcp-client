<div align="center">

# JADX-AI-MCP (Part of Zin's Reverse Engineering MCP Suite)

⚡ Fully automated MCP server + JADX plugin built to communicate with LLM through MCP to analyze Android APKs using LLMs like Claude — uncover vulnerabilities, parse manifests, and reverse engineer effortlessly.

![GitHub contributors JADX-AI-MCP](https://img.shields.io/github/contributors/zinja-coder/jadx-ai-mcp)
![GitHub contributors JADX-MCP-SERVER](https://img.shields.io/github/contributors/zinja-coder/jadx-mcp-server)
![GitHub all releases](https://img.shields.io/github/downloads/zinja-coder/jadx-ai-mcp/total)
![GitHub release (latest by SemVer)](https://img.shields.io/github/downloads/zinja-coder/jadx-ai-mcp/latest/total)
![Latest release](https://img.shields.io/github/release/zinja-coder/jadx-ai-mcp.svg)
![Java 11+](https://img.shields.io/badge/Java-11%2B-blue)
![Python 3.10+](https://img.shields.io/badge/python-3%2E10%2B-blue)
[![License](http://img.shields.io/:license-apache-blue.svg)](http://www.apache.org/licenses/LICENSE-2.0.html)

</div>

<!-- It is a still in early stage of development, so expects bugs, crashes and logical erros.-->

<!-- Standalone Plugin for [JADX](https://github.com/skylot/jadx) (Started as Fork) with Model Context Protocol (MCP) integration for AI-powered static code analysis and real-time code review and reverse engineering tasks using Claude.-->

![jadx-ai-banner.png](docs/assets/img.png) Image generated using AI tools.

---

## 🤖 What is JADX-AI-MCP?

**JADX-AI-MCP** is a plugin for the [JADX decompiler](https://github.com/skylot/jadx) that integrates directly with [Model Context Protocol (MCP)](https://github.com/anthropic/mcp) to provide **live reverse engineering support with LLMs like Claude**.

Think: "Decompile → Context-Aware Code Review → AI Recommendations" — all in real time.

Watch the demos!


https://github.com/user-attachments/assets/b65c3041-fde3-4803-8d99-45ca77dbe30a

https://github.com/user-attachments/assets/c184afae-3713-4bc0-a1d0-546c1f4eb57f


It is combination of two tools:
1. JADX-AI-MCP
2. [JADX MCP SERVER](https://github.com/zinja-coder/jadx-mcp-server)

## 🤖 What is JADX-MCP-SERVER?

**JADX MCP Server** is a standalone Python server that interacts with a `JADX-AI-MCP` plugin (see: [jadx-ai-mcp](https://github.com/zinja-coder/jadx-ai-mcp)) via MCP (Model Context Protocol). It lets LLMs communicate with the decompiled Android app context live.

---

# Other MCP Servers For Android Reverse Engineering
 - **[APKTool-MCP-Server](https://github.com/zinja-coder/apktool-mcp-server)**

## Current MCP Tools

The following MCP tools are available:

- `fetch_current_class()` — Get the class name and full source of selected class
- `get_selected_text()` — Get currently selected text
- `get_all_classes()` — List all classes in the project
- `get_class_source()` — Get full source of a given class
- `get_method_by_name()` — Fetch a method’s source
- `search_method_by_name()` — Search method across classes
- `get_methods_of_class()` — List methods in a class
- `get_fields_of_class()` — List fields in a class
- `get_smali_of_class()` — Fetch smali of class
- `get_main_activity_class()` — Fetch main activity from jadx mentioned in AndroidManifest.xml file.
- `get_main_application_classes_code()` — Fetch all the main application classes' code based on the package name defined in the AndroidManifest.xml.
- `get_main_application_classes_names()` — Fetch all the main application classes' names based on the package name defined in the AndroidManifest.xml.
- `get_android_manifest()` — Retrieve and return the AndroidManifest.xml content.
---

## 🗒️ Sample Prompts

🔍 Basic Code Understanding

    "Explain what this class does in one paragraph."

    "Summarize the responsibilities of this method."

    "Is there any obfuscation in this class?"

    "List all Android permissions this class might require."

🛡️ Vulnerability Detection

    "Are there any insecure API usages in this method?"

    "Check this class for hardcoded secrets or credentials."

    "Does this method sanitize user input before using it?"

    "What security vulnerabilities might be introduced by this code?"

🛠️ Reverse Engineering Helpers

    "Deobfuscate and rename the classes and methods to something readable."

    "Can you infer the original purpose of this smali method?"

    "What libraries or SDKs does this class appear to be part of?"

📦 Static Analysis

    "List all network-related API calls in this class."

    "Identify file I/O operations and their potential risks."

    "Does this method leak device info or PII?"

🤖 AI Code Modification

    "Refactor this method to improve readability."

    "Add comments to this code explaining each step."

    "Rewrite this Java method in Python for analysis."

📄 Documentation & Metadata

    "Generate Javadoc-style comments for all methods."

    "What package or app component does this class likely belong to?"

    "Can you identify the Android component type (Activity, Service, etc.)?"
---

## 🛠️ Getting Started 

### 1. Downlaod from Releases: https://github.com/zinja-coder/jadx-ai-mcp/releases

> [!NOTE]
>
> Download both `jadx-ai-mcp-<version>.jar` and `jadx-mcp-server-<version>.zip` files.


```bash
# 0. Download the jadx-ai-mcp-<version>.jar and jadx-mcp-server-<version>.zip
https://github.com/zinja-coder/jadx-ai-mcp/releases

# 1. 
unzip jadx-ai-mcp-<version>.zip

├jadx-mcp-server/
  ├── jadx_mcp.py
  ├── requirements.txt
  ├── README.md
  ├── LICENSE

├jadx-ai-mcp-<version>.jar

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
