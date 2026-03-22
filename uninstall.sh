#!/bin/bash
# OmniChess Uninstaller

echo "======================================"
echo "      OmniChess Uninstaller"
echo "======================================"

# Detect Pi-Apps
if command -v install_packages &>/dev/null; then
    PIAPPS=true
    echo "Pi-Apps detected"
else
    PIAPPS=false
fi

# 1. Remove main install directory
if [ -d "$HOME/OmniChess" ]; then
    rm -rf "$HOME/OmniChess"
    echo "Removed $HOME/OmniChess"
else
    echo "Install directory not found, skipping..."
fi

# 2. Remove desktop shortcut
if [ -f "$HOME/Desktop/OmniChess.desktop" ]; then
    rm -f "$HOME/Desktop/OmniChess.desktop"
    echo "Removed desktop shortcut"
else
    echo "Desktop shortcut not found, skipping..."
fi

# 3. Remove local app menu entry
if [ -f "$HOME/.local/share/applications/omnichess.desktop" ]; then
    rm -f "$HOME/.local/share/applications/omnichess.desktop"
    echo "Removed local menu entry"
fi

# 4. Clean up any leftover temp files from a failed install
rm -rf /tmp/Stockfish /tmp/stockfish /tmp/stockfish-linux-armv8.tar 2>/dev/null
echo "Cleaned up temp files"

# 5. Remove system-wide menu entry and CLI launcher (skip if Pi-Apps)
if [ "$PIAPPS" = false ]; then
    if [ -f "/usr/share/applications/omnichess.desktop" ]; then
        sudo rm -f /usr/share/applications/omnichess.desktop
        echo "Removed system menu entry"
    else
        echo "System menu entry not found, skipping..."
    fi

    if [ -f "/usr/local/bin/omnichess" ]; then
        sudo rm -f /usr/local/bin/omnichess
        echo "Removed CLI launcher"
    else
        echo "CLI launcher not found, skipping..."
    fi

    # Refresh menu
    sudo update-desktop-database /usr/share/applications/ 2>/dev/null
    update-desktop-database "$HOME/.local/share/applications/" 2>/dev/null
    xdg-desktop-menu forceupdate --novendor 2>/dev/null
    rm -rf "$HOME/.cache/menus" 2>/dev/null
else
    echo "Skipping system file removal — Pi-Apps handles this"
fi

echo "======================================"
echo "OmniChess uninstalled successfully!"
if [ "$PIAPPS" = false ]; then
    echo "Please log out and back in if it"
    echo "still appears in the menu."
fi
echo "======================================"
