#!/bin/bash

echo "======================================"
echo "      OmniChess Uninstaller"
echo "======================================"

# Remove OmniChess directory
echo "Removing OmniChess files..."
rm -rf "$HOME/OmniChess"

# Remove desktop shortcuts (both locations)
echo "Removing desktop shortcut..."
sudo rm -f /usr/share/applications/omnichess.desktop
rm -f ~/.local/share/applications/omnichess.desktop

# Remove launcher
echo "Removing launcher..."
sudo rm -f /usr/local/bin/omnichess

# Clear menu cache
echo "Clearing menu cache..."
sudo update-desktop-database /usr/share/applications/
update-desktop-database ~/.local/share/applications/
xdg-desktop-menu forceupdate --novendor
rm -rf ~/.cache/menus

echo "======================================"
echo "OmniChess uninstalled successfully!"
echo "Please log out and back in to"
echo "complete removal from menu."
echo "======================================"
