# 🌐 Cross-Platform Execution Rule

This rule ensures that the agent's command execution and file path handling are compatible across all operating systems (Windows, MacOS, Linux).

## 📋 Detailed Guidelines

1. **OS Detection First**: Before starting any task, the agent must identify the user's OS environment.
2. **Command Branching**:
   - Directory Creation: `mkdir -p` (Unix) vs `New-Item -ItemType Directory` (PowerShell)
   - File Listing: `ls -la` (Unix) vs `dir` (CMD/PS)
3. **Path Separators**: 
   - Use `/` (Forward Slash) within code where possible, or use language-specific path utilities (e.g., Node.js `path.join`).
4. **Shell Script Suggestions**: When creating OS-specific scripts (`.sh`, `.bat`, `.ps1`), explicitly mention this to the user.

## 🚀 Execution Examples

When the agent needs to create a folder:
- "Since your environment is Mac/Linux, I will run the `mkdir -p .agent/rules` command."
- "Since your environment is Windows, I suggest creating the folder using PowerShell."
