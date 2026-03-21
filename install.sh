#!/bin/bash
install_dir="$HOME/OmniChess"

install_packages git g++ make python3 python3-pip unifont python3-pygame python3-chess
pip3 install python-chess --user

mkdir -p "$install_dir"
wget -qO "$install_dir/OmniChess-Linux-ARM.py" "https://github.com/Coder787-source/OmniChess/releases/latest/download/OmniChess-Linux-ARM.py"
wget -qO "$install_dir/icon-64.png" "https://raw.githubusercontent.com/Coder787-source/OmniChess/main/icon-64.png"

cd /tmp
git clone --depth 1 https://github.com/official-stockfish/Stockfish.git
cd Stockfish/src
make -j$(nproc) build
cp stockfish "$install_dir/stockfish"
chmod +x "$install_dir/stockfish"
cd ~
rm -rf /tmp/Stockfish

create_desktop_entry "OmniChess" "Open source chess app powered by Stockfish" "python3 $install_dir/OmniChess-Linux-ARM.py" "$install_dir/icon-64.png"

cat > /usr/local/bin/omnichess << EOF
#!/bin/bash
python3 $install_dir/OmniChess-Linux-ARM.py
EOF
chmod +x /usr/local/bin/omnichess
