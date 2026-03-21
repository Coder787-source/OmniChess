OmniChess
An open-source chess project developed entirely in Python.

🚀 Features
Stockfish Integration: Engine-driven analysis and gameplay.

Lichess Puzzle API: Practice with an infinite stream of tactical puzzles directly in-app.

PGN Export: Download games to analyze on chess.com or lichess.org.

Flexible Difficulty: Multiple skill levels and custom ELO adjustment.

Anti-Cheat: Built-in system to monitor and flag unauthorized move assistance.

Cross-Platform: Native support for Windows, Linux (including Raspberry Pi), and macOS.

🐧 Linux ARM / Raspberry Pi Setup
⚡ Auto Installer (Recommended)
This is the fastest way to get OmniChess running on a Raspberry Pi. This script handles all dependencies, compiles Stockfish for your specific hardware, installs the application icon, and adds OmniChess to your application menu.

Install:

Bash
wget -qO- https://raw.githubusercontent.com/Coder787-source/OmniChess/main/install.sh | bash
Uninstall:

Bash
wget -qO- https://raw.githubusercontent.com/Coder787-source/OmniChess/main/uninstall.sh | bash
⚠️ Note: Stockfish compilation is optimized for your hardware and may take a few minutes (3-15m) depending on your Pi model.

💻 Other Platforms
🪟 Windows (x86-64 & ARM64)
Download the correct Stockfish binary for your architecture from stockfishchess.org.

Place the binary in the project folder.

Install requirements: pip install -r requirements.txt

Run: python OmniChess-Windows-your-arch.py

🐧 Linux x86-64
Install Unifont: sudo apt install fonts-unifont (Debian/Ubuntu).

Download the Linux x86-64 Stockfish binary.

Make it executable: chmod +x stockfish-binary-name

Run: python3 OmniChess-Linux-x86-64.py

🍎 macOS (Apple Silicon)
Download the macOS Apple Silicon Stockfish binary.

Remove the quarantine flag:

Bash
xattr -d com.apple.quarantine stockfish-macos-m1-apple-silicon
chmod +x stockfish-macos-m1-apple-silicon
Run: python3 OmniChess-MacOS-ARM.py

📋 Requirements
Python 3.x

Pygame & Python-Chess

Unifont (For proper chess piece rendering)

🤝 Credits
Stockfish Engine: Developed by the Stockfish team.

Puzzles: Powered by the Lichess.org API.

Developer: Coder787
