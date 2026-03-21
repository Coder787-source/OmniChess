#!/bin/bash
# OmniChess v1.2 Auto-Installer

echo "Step 1: Installing System Audio & Math Dependencies..."
sudo apt-get update
# libportaudio2 is required for your numpy sound mixer
# libssl-dev is required for the Lichess API calls (urllib/ssl)
sudo apt-get install -y build-essential python3-pip python3-numpy \
    libportaudio2 libasound2-dev libssl-dev python3-pygame

echo "Step 2: Installing Python sounddevice library..."
# This allows your NumPy arrays to talk to the Pi's speakers
pip3 install sounddevice --break-system-packages

INSTALL_DIR="$HOME/OmniChess"
if [ ! -d "$INSTALL_DIR" ]; then
    mkdir -p "$INSTALL_DIR"
fi

# Move current files to the install directory
cp -r . "$INSTALL_DIR"

echo "Step 3: Checking Stockfish Core..."
if [ ! -f "$INSTALL_DIR/stockfish" ]; then
    echo "Compiling Stockfish for your specific Pi hardware..."
    # If the user is on Pi 4/5, this make command optimizes for their CPU
    git clone https://github.com/official-stockfish/Stockfish.git
    cd Stockfish/src && make -j$(nproc) build ARCH=armv8
    cp stockfish "$INSTALL_DIR/stockfish"
    chmod +x "$INSTALL_DIR/stockfish"
    cd "$INSTALL_DIR"
    rm -rf Stockfish
fi

echo "Step 4: Finalizing Desktop Launcher..."
cat <<EOF > ~/Desktop/OmniChess.desktop
[Desktop Entry]
Name=OmniChess
Exec=python3 $INSTALL_DIR/main.py
Icon=$INSTALL_DIR/icon.png
Terminal=false
Type=Application
Categories=Game;BoardGame;
EOF

chmod +x ~/Desktop/OmniChess.desktop
echo "SUCCESS: OmniChess v1.2 is ready. Your job is now: PLAY."
