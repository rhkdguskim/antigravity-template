---
description: Check the current development environment (OS, Node.js, Git, etc.) and output system information.
---

This workflow checks the user's operating system and verifies if the essential tools are installed.

1. **Check OS Information**
   - For Mac/Linux: Run `uname -a`
   - For Windows: Run `systeminfo | findstr /B /C:"OS Name" /C:"OS Version"`

2. **Check Tool Versions**
   - Node.js: `node -v`
   - NPM: `npm -v`
   - Git: `git --version`

3. **Summary of Results**
   - Organize all verified information into a table format and report it.
