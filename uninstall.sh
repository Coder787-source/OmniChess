#!/bin/bash
install_dir="$HOME/OmniChess"

# 1. Define the remove function if it doesn't exist (for manual users)
if ! command -v remove_desktop_entry &> /dev/null; then
    remove_desktop_entry() {
        sudo rm -f "/usr/share/applications/${1,,}.desktop"
    }
fi

# 2. Cleanup
rm -rf "$install_dir"
sudo rm -f /usr/local/bin/omnichess
remove_desktop_entry "OmniChess"

echo "OmniChess has been uninstalled."
