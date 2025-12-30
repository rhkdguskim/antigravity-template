# 🌌 Antigravity Template

A standardized template for the **AntiGravity** environment that works seamlessly across Windows, Mac, and Linux. This template provides optimized Rules and Workflows to help AI agents understand project context and automate repetitive tasks.

## 🚀 Key Features

- **Cross-Platform Compatibility**: Standardized command guides that work on macOS, Windows (PowerShell/CMD), and Linux (Bash).
- **AI-Optimized Context**: Rule settings that allow agents to immediately grasp project structure and development philosophy.
- **Automated Workflows**: Automation processes for recurring development tasks (issue creation, brainstorming, building, deployment, etc.).

## 📁 Project Structure

```text
.
├── .agent/
│   ├── rules/              # Agent behavior and quality rules (.md)
│   └── workflows/          # Automated workflow definitions (.md)
├── .cursorrules            # Core instructions and environment settings
└── README.md               # Project guide
```

## 🛠 Component Details

### 1. `.agent/rules/`
Defines **detailed rules** that the agent must follow when writing code or executing commands.
- `cross-platform.md`: Rules for multi-OS command compatibility.
- `code-style.md`: Common project code style rules.
- `security.md`: Security guidelines and sensitive info protection.

### 2. `.agent/workflows/`
Defines **workflows** that can be executed by the agent to automate complex procedures.

- **Examples**:
  - `/gemini`: Direct Gemini CLI call and query.
  - `/codex`: Direct Codex CLI call and technical review.
  - `/claudecode`: Direct Claude Code CLI call and review.
  - `/ai-brainstorm`: Collaborative process combining multiple AI interfaces.
  - `/mcp-install`: Node.js-based MCP server installation helper.
  - `/check-env`: Environment health check.
  - `/task`: Standard development procedure.

### 3. `.cursorrules` (Project Rules)
Defines the 'Identity', 'Code Style', and 'Prohibitions' for the agent. This ensures the agent produces consistent quality code.

- Instructs command execution based on detected OS.
- Includes recommendations for specific frameworks or libraries.

## 📖 How to Use

1. **Copy Template**: Copy the files from this repository to your new project root directory.
2. **Invoke Agent**: Ask the Antigravity or AI agent to execute a workflow using `/` commands.
   - Example: `"Run /check-env"`
3. **Follow Rules**: The agent will automatically respond and perform tasks according to the rules defined in `.cursorrules`.

## 🤝 Contributing

This template evolves through community feedback. If you have suggestions for new workflows or rule improvements, feel free to contribute!

---

**Happy Coding with AntiGraivty!** 🚀
