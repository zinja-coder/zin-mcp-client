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

<div align="center">
    <img alt="banner" height="480px" widht="620px" src="https://github.com/user-attachments/assets/0e8e0ecd-0520-422e-a007-03dc62c4118e">
</div>

 Image generated using AI tools.

---

## 🤖 What is ZIN MCP Client?

A powerful yet lightweight, fast, simple and flexible client for interacting with MCP (Model Context Protocol) servers through local LLMs. This tool allows you to connect to and utilize various tools from multiple MCP servers through an easy-to-use command-line interface.

Watch the demos!


- **Rich CLI interaction**

https://github.com/user-attachments/assets/fad3d994-8113-47df-b10c-54541a5c3aec

- **Perform Code Review to Find Vulnerabilities locally**

https://github.com/user-attachments/assets/4cd26715-b5e6-4b4b-95e4-054de6789f42


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

> [!NOTE]
>
>  This project is mainly developed for Zin MCP Servers which are below mentioned MCP Servers, while other STDIO based MCP Servers should work in theory testing is done on following servers only.

 - **[APKTool-MCP-Server](https://github.com/zinja-coder/apktool-mcp-server)**
 - **[JADX-MCP-Server](https://github.com/zinja-coder/jadx-mcp-server)**


## 🛠️ Getting Started 

### 1. Downlaod from Releases: https://github.com/zinja-coder/zin-mcp-client/releases

```bash
# 1. 
unzip zin-mcp-client-<version>.zip

├zin-mcp-client/
  ├── zin_mcp_client.py
  ├── src/
  ├── mcp-config.json
  ├── README.md
  ├── LICENSE

# 2. Navigate to zin-mcp-client directory
cd zin-mcp-client

# 3. This project uses uv (recommended) - https://github.com/astral-sh/uv instead of pip for dependency management.
    ## a. Install uv (if you dont have it yet) - (Only Required Step)
curl -LsSf https://astral.sh/uv/install.sh | sh

# All below steps are not required.
    ## b. OPTIONAL, if for any reasons, you get dependecy errors in jadx-mcp-server, Set up the environment
uv venv
source .venv/bin/activate  # or .venv\Scripts\activate on Windows
    ## c. OPTIONAL Install dependencies
uv pip install -r requirements.txt

# 4. Not recommended, you can also use pip for this.
pip install -r requirements.txt
or
pip install -r requirements.txt --break-system-packages

# The setup for zin-mcp-client is done.
```

## 🤖 2. Ollama Setup

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

For example, the llama 3.1 has capability to invoke the tool. 

You can run it using following command:

> ollama run llama3.1:8b

[Note]: Kindly note the above command will fetch the model with 4b parameters. If you have stronger hardware kindly fetch higher parameter model for better performance.

3. Serve the Ollama on API server using following command

> ollama serve

This will serve the ollama api on port 1134, you can confirm that it running using `curl` command as following:

> curl http://localhost:11434/                                                                                                                                              18:54:00
`Ollama is running`

```

## ⚙️ 3. Config File Setup

The config file is the MCP Server configuration file that tells zin mcp client how to start the MCP Servers. 

It follows the same style as Claude's configuration file. 

Below is the sample configuration file for Zin MCP Suite Servers:

```json
{
    "mcpServers": {
        "jadx-mcp-server": {
            "command": "/path/to/uv", 
            "args": [
                "--directory",
                "/path/to/jadx-mcp-server/",
                "run",
                "jadx_mcp_server.py"
            ]
        },
        "apktool-mcp-server": {
		    "command": "/path/to/uv",
            "args": [
                "--directory",
                "/path/to/apktool-mcp-server/",
                "run",
                "apktool_mcp_server.py"
            ]
	}
    }
}
```

Replace:

- `path/to/uv` with the actual path to your `uv` executable
- `path/to/jadx-mcp-server` with the absolute path to where you have stored the jadx-mcp-server

> [!NOTE]
>
>  The default location of config file is inside zin-mcp-client directory named `mcp-config.json`, however you can provide path to your own config file using `--config` option such as 

```bash
uv run zin_mcp_client.py --server jadx-mcp-server --model llama3.1:8b --config /home/zinjacoder/mcp-config.json 
```   

## Give it a shot

1. Run zin_mcp_client.py

```bash
uv run zin_mcp_client.py
```

2. Use `--server` option to specify server of your choice, use `--config` option to provide path to your config file, use `--model` option to use specific model, use `--debug` to enable verbose output

## If something went wrong - DEBUG and Troubleshooting

> [!NOTE]
> 
>  For low spec systems, use only one server at a time to avoid LLM hallucinations.

1. Look the logs:

- All the logs and debug information and raw traffic and interactions are stored in logs in easy to read way, If anything goes wrong check the logs.

2. Debug Mode:

- You can also use the `--debug` flag to enable debug to print each and every detail on console on runtime to help you find the issue.

https://github.com/user-attachments/assets/ee478917-c4f5-46fb-9f0e-ad31d7c33ee0

3. Open Issue:

- If you can not resolve the error on you own, use the logs and debug mode's output and provide them to us by opening an issue at https://github.com/zinja-coder/zin-mcp-client/issues

Current State Of Local LLM and MCPs:

Currently, proprietary API-based models like Anthropic’s Claude tend to be more proficient proficient at tool calling. 

However, the open-source world is advancing rapidly! Models specifically fine-tuned on function calling datasets are becoming increasingly available through Ollama. Researching models tagged with `function calling` or `tool use` on platforms like Hugging Face or [checking discussions on communities like r/LocalLLaMA is key to finding capable local options.](https://www.reddit.com/r/LocalLLaMA/search/?q=Best+open+source+LLM+for+function+calling+mcp&cId=c72f65d2-d327-41b0-8e6d-73e889385cda&iId=795a5a92-245d-42d2-ae60-47dfff7dbef0)

---

## 🛣️ Future Roadmap

 - [ ] Add Support HTTP based MCP Servers

 - [ ] Add support exposing this client on network as well

 - [ ] Store chat locally and provide chat history

 - [ ] **END-GOAL** : Make all reverse engineering MCP Servers, bring them together, to make reverse engineering as easy as possible purely from vibes.

## To report bugs, issues, feature suggestion, Performance issue, general question, Documentation issue.
 - Kindly open an issue with respective template.

 - Tested on Mac OS and Linux environment with jadx-mcp-server

## 🙏 Credits

This project is a possible due to [ollama](https://ollama.com/), an amazing utility to rung local LLMs. The [langchain](https://www.langchain.com/) project, 

And in last thanks to [@anthropics](https://github.com/anthropics) for developing the Model Context Protocol and [@FastMCP](https://github.com/modelcontextprotocol/python-sdk) team.

Apart from this, huge thanks to all open source projects which serve as a dependencies for this project and which made this possible.

## 📄 License

ZIN MCP Client and all related projects inherits the Apache 2.0 License.

## ⚖️ Legal Warning

**Disclaimer**

The tools `zin-mcp-client` and `zin mcp suite` are intended strictly for educational, research, and ethical security assessment purposes. They are provided "as-is" without any warranties, expressed or implied. Users are solely responsible for ensuring that their use of these tools complies with all applicable laws, regulations, and ethical guidelines.

By using `zin-mcp-client` or `zin mcp suite`, you agree to use them only in environments you are authorized to test, such as applications you own or have explicit permission to analyze. Any misuse of these tools for unauthorized reverse engineering, infringement of intellectual property rights, or malicious activity is strictly prohibited.

The developers of `zin-mcp-client` and `zin mcp suite` shall not be held liable for any damage, data loss, legal consequences, or other consequences resulting from the use or misuse of these tools. Users assume full responsibility for their actions and any impact caused by their usage.

Use responsibly. Respect intellectual property. Follow ethical hacking practices.

---

## 🙌 Contribute or Support

- Found it useful? Give it a ⭐️
- Got ideas? Open an [issue](https://github.com/zinja-coder/zin-mcp-client/issues) or submit a PR
- Built something on top? DM me or mention me — I’ll add it to the README!
- Do you like my work and keep it going? Sponsor this project.
  
---

Built with ❤️ for the reverse engineering and AI communities and all the awesome hackers and open source contributors around the world.
