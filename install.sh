#!/bin/bash
INSTALL_DIR="$HOME/OmniChess"
echo "======================================"
echo "       OmniChess Installer"
echo "======================================"
# Step 1 - Install dependencies
echo "Installing dependencies..."
sudo apt install -y git g++ make python3 python3-pip unifont
# Step 2 - Install Python requirements
echo "Installing Python packages..."
pip3 install pygame python-chess --break-system-packages
# Step 3 - Download OmniChess
echo "Downloading OmniChess..."
mkdir -p "$INSTALL_DIR"
wget -O "$INSTALL_DIR/OmniChess-Linux-ARM.py" \
"https://github.com/Coder787-source/OmniChess/releases/latest/download/OmniChess-Linux-ARM.py"
# Step 4 - Compile Stockfish
echo "Compiling Stockfish from source (this may take 5-30 minutes depending on your Pi)..."
cd /tmp
git clone https://github.com/official-stockfish/Stockfish.git
cd Stockfish/src
make -j4 build
cp stockfish "$INSTALL_DIR/stockfish"
chmod +x "$INSTALL_DIR/stockfish"
cd ~
rm -rf /tmp/Stockfish
# Step 5 - Create desktop shortcut (single location only)
echo "Creating desktop shortcut..."
sudo bash -c "cat > /usr/share/applications/omnichess.desktop << EOF
[Desktop Entry]
Name=OmniChess
Comment=Open source chess app powered by Stockfish
Exec=python3 $INSTALL_DIR/OmniChess-Linux-ARM.py
Icon=applications-games
Terminal=false
Type=Application
Categories=Utility;Game;
StartupNotify=true
EOF"
# Update desktop database
sudo update-desktop-database /usr/share/applications/
xdg-desktop-menu forceupdate --novendor
# Step 6 - Create launcher script
echo "Creating launcher..."
sudo bash -c "cat > /usr/local/bin/omnichess << EOF
#!/bin/bash
python3 $INSTALL_DIR/OmniChess-Linux-ARM.py
EOF"
sudo chmod +x /usr/local/bin/omnichess
echo "======================================"
echo "OmniChess installed successfully!"
echo "Launch from menu or type: omnichess"
echo "Please log out and back in if it"
echo "doesn't appear in menu immediately."
echo "======================================"
