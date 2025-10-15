#!/bin/bash

# --- 1. Install Iosevka Font ---
# Update package list and install the Iosevka font package
# Use 'sudo' as this is a system-wide installation.
sudo apt-get update -y
sudo apt-get install -y fonts-iosevka

echo "Iosevka font installed successfully."

# --- 2. Install VS Code Extension ---
# Use the VS Code CLI ('code') to install the extension.
# The extension ID for Rose Pine is 'mvllow.rose-pine'.
# This command is run by the VS Code service during Codespace creation.
code --install-extension mvllow.rose-pine --force

echo "Rose Pine VS Code extension installed successfully."

# --- 3. Run Your Other Dotfile Setup Commands (e.g., symlinks) ---
# ... (add any other shell/tool setup scripts you have)
