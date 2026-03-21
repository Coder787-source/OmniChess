---

# OmniChess
An open-source chess project developed entirely in Python.

![OmniChess gameplay](gameplay.png) ![OmniChess icon](icon-64.png)

---

## 🚀 Features
- **Stockfish Integration:** Engine-driven analysis and gameplay.
- **Lichess Puzzle API:** Practice with an infinite stream of tactical puzzles directly in-app.
- **PGN Export:** Download games to analyze on chess.com or lichess.org.
- **Flexible Difficulty:** Multiple skill levels and custom ELO adjustment.
- **Anti-Cheat:** Built-in system to monitor and flag unauthorized move assistance.
- **Cross-Platform:** Native support for Windows, Linux (including Raspberry Pi), and macOS.

---

## 🐧 Linux ARM / Raspberry Pi Setup

### ⚡ Auto Installer (Recommended)
This is the fastest way to get OmniChess running on a Raspberry Pi. This script handles all dependencies, compiles Stockfish for your specific Pi model, and adds OmniChess to your application menu.

**Install:**
```bash
wget -qO- https://raw.githubusercontent.com/Coder787-source/OmniChess/main/install.sh | bash
```

**Uninstall:**
```bash
wget -qO- https://raw.githubusercontent.com/Coder787-source/OmniChess/main/uninstall.sh | bash
```

> ⚠️ **Note:** Stockfish compilation is optimized for your hardware and may take a few minutes depending on your Pi model (Pi 5 is significantly faster).

---

## 💻 Other Platforms

### 🪟 Windows (x86-64 & ARM64)
1. Download the correct **Stockfish binary** for your architecture from [stockfishchess.org](https://stockfishchess.org/download/).
2. Place the binary in the project folder.
3. Install requirements: `pip install -r requirements.txt`
4. Run: `python OmniChess-Windows-your-arch.py`

### 🐧 Linux x86-64
1. Install Unifont: `sudo apt install fonts-unifont` (Debian/Ubuntu).
2. Download the **Linux x86-64** Stockfish binary.
3. Make it executable: `chmod +x stockfish-binary-name`
4. Run: `python3 OmniChess-Linux-x86-64.py`

### 🍎 macOS (Apple Silicon)
1. Download the **macOS Apple Silicon** Stockfish binary.
2. Remove the quarantine flag: 
   ```bash
   xattr -d com.apple.quarantine stockfish-macos-m1-apple-silicon
   chmod +x stockfish-macos-m1-apple-silicon
   ```
3. Run: `python3 OmniChess-MacOS-ARM.py`

---

## 📋 Requirements
- **Python 3.x**
- **Pygame** & **Python-Chess**
- **Unifont** (For proper chess piece rendering)

---

## 🤝 Credits
* **Stockfish Engine:** Developed by the Stockfish team.
* **Puzzles:** Powered by the Lichess.org API.
* **Developer:** Coder787

---
