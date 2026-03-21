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
fi

# 2. Remove desktop shortcut
if [ -f "$HOME/Desktop/OmniChess.desktop" ]; then
    rm -f "$HOME/Desktop/OmniChess.desktop"
    echo "Removed desktop shortcut"
fi

# 3. Remove local app menu entry
if [ -f "$HOME/.local/share/applications/omnichess.desktop" ]; then
    rm -f "$HOME/.local/share/applications/omnichess.desktop"
    echo "Removed local menu entry"
fi

# 4. Remove system-wide menu entry
sudo rm -f /usr/share/applications/omnichess.desktop
echo "Removed system menu entry"

# 5. Remove CLI launcher
sudo rm -f /usr/local/bin/omnichess
echo "Removed CLI launcher"

# 6. Refresh menu
sudo update-desktop-database /usr/share/applications/ 2>/dev/null
update-desktop-database "$HOME/.local/share/applications/" 2>/dev/null
xdg-desktop-menu forceupdate --novendor 2>/dev/null
rm -rf "$HOME/.cache/menus" 2>/dev/null

echo "======================================"
echo "OmniChess uninstalled successfully!"
echo "Please log out and back in if it"
echo "still appears in the menu."
echo "======================================"
