#!/bin/bash
# OmniChess v1.2 Uninstaller

install_dir="$HOME/OmniChess"
desktop_file="$HOME/Desktop/OmniChess.desktop"

echo "Uninstalling OmniChess..."

# 1. Remove the main project folder (Engine, Python scripts, and local Assets)
if [ -d "$install_dir" ]; then
    rm -rf "$install_dir"
    echo "Removed $install_dir"
fi

# 2. Remove the Desktop Launcher
if [ -f "$desktop_file" ]; then
    rm -f "$desktop_file"
    echo "Removed Desktop shortcut"
fi

# 3. Remove system-wide symlinks if they exist
sudo rm -f /usr/local/bin/omnichess

# 4. Remove menu entry (if Pi-Apps moved it to the system menu)
sudo rm -f "/usr/share/applications/omnichess.desktop"

echo "OmniChess has been successfully uninstalled."
