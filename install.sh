#!/bin/bash
# OmniChess Auto-Installer
INSTALL_DIR="$HOME/OmniChess"
REPO="https://github.com/Coder787-source/OmniChess"
RELEASE="https://github.com/Coder787-source/OmniChess/releases/latest/download"

echo "======================================"
echo "       OmniChess Installer"
echo "======================================"

# Detect Pi-Apps helper functions
if command -v install_packages &>/dev/null; then
    PIAPPS=true
    echo "Pi-Apps detected — using Pi-Apps helper functions"
else
    PIAPPS=false
fi

# Step 1: System dependencies
echo "Step 1: Installing system dependencies..."
if [ "$PIAPPS" = true ]; then
    install_packages build-essential python3-pip python3-numpy \
        python3-pygame libportaudio2 libasound2-dev libssl-dev \
        git fonts-symbola wget
else
    sudo apt-get update
    sudo apt-get install -y \
        build-essential \
        python3-pip \
        python3-numpy \
        python3-pygame \
        libportaudio2 \
        libasound2-dev \
        libssl-dev \
        git \
        fonts-symbola \
        wget
fi

# Step 2: Python libraries
echo "Step 2: Installing Python libraries..."
if [ "$PIAPPS" = true ]; then
    pip_install python-chess sounddevice
else
    pip3 install python-chess sounddevice --break-system-packages
fi

# Step 3: Create install directory
echo "Step 3: Setting up install directory..."
mkdir -p "$INSTALL_DIR"

# Step 4: Download OmniChess
echo "Step 4: Downloading OmniChess..."
wget -q -O "$INSTALL_DIR/OmniChess-Linux-ARM.py" \
    "$RELEASE/OmniChess-Linux-ARM.py"
wget -q -O "$INSTALL_DIR/icon.png" \
    "$REPO/raw/main/omnichess_icon.png"

# Step 5: Compile Stockfish
echo "Step 5: Compiling Stockfish (this may take 5-30 minutes)..."
if [ ! -f "$INSTALL_DIR/stockfish" ]; then
    cd /tmp
    git clone https://github.com/official-stockfish/Stockfish.git
    cd Stockfish/src
    make -j$(nproc) build ARCH=armv8
    cp stockfish "$INSTALL_DIR/stockfish"
    chmod +x "$INSTALL_DIR/stockfish"
    cd "$INSTALL_DIR"
    rm -rf /tmp/Stockfish
else
    echo "Stockfish already compiled, skipping..."
fi

# Step 6: Desktop launcher (skip if Pi-Apps — it handles this)
if [ "$PIAPPS" = false ]; then
    echo "Step 6: Creating desktop launcher..."
    mkdir -p ~/Desktop
    cat > ~/Desktop/OmniChess.desktop << EOF
[Desktop Entry]
Name=OmniChess
Comment=Open source chess app powered by Stockfish
Exec=env SDL_VIDEO_CENTERED=1 python3 $INSTALL_DIR/OmniChess-Linux-ARM.py
Icon=$INSTALL_DIR/icon.png
Terminal=false
Type=Application
Categories=Game;BoardGame;
StartupNotify=true
EOF
    chmod +x ~/Desktop/OmniChess.desktop

    # App menu entry
    sudo bash -c "cat > /usr/share/applications/omnichess.desktop << EOF
[Desktop Entry]
Name=OmniChess
Comment=Open source chess app powered by Stockfish
Exec=env SDL_VIDEO_CENTERED=1 python3 $INSTALL_DIR/OmniChess-Linux-ARM.py
Icon=$INSTALL_DIR/icon.png
Terminal=false
Type=Application
Categories=Game;BoardGame;
StartupNotify=true
EOF"
    sudo update-desktop-database /usr/share/applications/

    # CLI launcher
    sudo bash -c "cat > /usr/local/bin/omnichess << EOF
#!/bin/bash
SDL_VIDEO_CENTERED=1 python3 $INSTALL_DIR/OmniChess-Linux-ARM.py
EOF"
    sudo chmod +x /usr/local/bin/omnichess
else
    echo "Step 6: Skipping desktop launcher — Pi-Apps handles this"
fi

echo "======================================"
echo "OmniChess installed successfully!"
if [ "$PIAPPS" = false ]; then
    echo "Launch from menu, desktop, or type: omnichess"
fi
echo "======================================"
