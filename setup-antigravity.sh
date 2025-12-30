#!/bin/bash

# AntiGravity Setup & Linker (macOS/Linux)
# Automatically finds the active Cursor project and links .agent files.

SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
PROJECT_ROOT="$(dirname "$(dirname "$SCRIPT_DIR")")"
SOURCE_AGENT="$PROJECT_ROOT/.agent"

echo "------------------------------------------------"
echo "   AntiGravity Template Linker (Mac/Linux)      "
echo "------------------------------------------------"

# 1. Ask for Target Project Path
echo "Enter the absolute path of the project where you want to apply AntiGravity:"
read -r TARGET_PROJECT

# Expand tilde if present
TARGET_PROJECT="${TARGET_PROJECT/#\~/$HOME}"

if [ ! -d "$TARGET_PROJECT" ]; then
    echo "❌ Error: Target directory does not exist: $TARGET_PROJECT"
    exit 1
fi

TARGET_AGENT="$TARGET_PROJECT/.agent"

# 2. Sync Files
echo "Syncing AntiGravity assets..."
echo "Source: $SOURCE_AGENT"
echo "Target: $TARGET_AGENT"

mkdir -p "$TARGET_AGENT/rules"
mkdir -p "$TARGET_AGENT/workflows"

# Copy rules and workflows
cp -R "$SOURCE_AGENT/rules/"* "$TARGET_AGENT/rules/" 2>/dev/null
cp -R "$SOURCE_AGENT/workflows/"* "$TARGET_AGENT/workflows/" 2>/dev/null

# Copy .cursorrules to target root if it exists
if [ -f "$PROJECT_ROOT/.cursorrules" ]; then
    cp "$PROJECT_ROOT/.cursorrules" "$TARGET_PROJECT/"
    echo "✅ Copied .cursorrules to target project root."
fi

echo "------------------------------------------------"
echo "✨ Setup Complete!"
echo "AntiGravity workflows and rules have been copied to $TARGET_PROJECT"
echo "Restart Cursor or reload the window to see changes."
echo "------------------------------------------------"
read -p "Press enter to close..."
