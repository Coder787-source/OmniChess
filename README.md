# OmniChess
An open-source chess project developed entirely in Python.

![OmniChess gameplay](gameplay.png) ![OmniChess icon](icon-64.png)

---

## 🚀 Features
- **Stockfish Integration:** Engine-driven analysis and gameplay.
- **Lichess Puzzle API:** Practice with an infinite stream of tactical puzzles directly in-app.
- **PGN Export:** Download games to analyze on chess.com or lichess.org.
- **Flexible Difficulty:** Multiple skill levels and custom ELO adjustment.
- **Seasonal Themes:** Unique board themes that change every month.
- **Board Themes:** Multiple year-round board colour options.
- **Takebacks:** Undo moves with limits based on difficulty level.
- **Anti-Cheat:** Built-in system to monitor hint usage.
- **Fully Offline:** Works without an internet connection once installed.
- **Cross-Platform:** Native support for Windows (x86-64 & ARM64), Linux (x86-64 & ARM), and macOS (Apple Silicon).

---

## 🐧 Linux ARM / Raspberry Pi Setup

### ⚡ Auto Installer (Recommended)
Handles all dependencies, compiles Stockfish for your specific hardware, and adds OmniChess to your application menu automatically.

**Install:**
```bash
wget -qO- https://raw.githubusercontent.com/Coder787-source/OmniChess/main/install.sh | bash
```

**Uninstall:**
```bash
wget -qO- https://raw.githubusercontent.com/Coder787-source/OmniChess/main/uninstall.sh | bash
```

> ⚠️ **Note:** Stockfish compilation is optimized for your hardware and may take 3–30 minutes depending on your Pi model.

---

## 💻 Other Platforms

### 🪟 Windows x86-64
1. Download the **x86-64 AVX2** Stockfish binary from [stockfishchess.org](https://stockfishchess.org/download/).
2. Place the binary in the same folder as `OmniChess-Windows-x86-64.py`.
3. Install requirements: `pip install -r requirements.txt`
4. Run: `python OmniChess-Windows-x86-64.py`

---

### 🪟 Windows ARM64
1. Download the **ARM64** Stockfish binary from [stockfishchess.org](https://stockfishchess.org/download/).
2. Place the binary in the same folder as `OmniChess-Windows-ARM64.py`.
3. Install requirements: `pip install -r requirements.txt`
4. Run: `python OmniChess-Windows-ARM64.py`

---

### 🐧 Linux x86-64
1. Install Symbola font: `sudo apt install fonts-symbola`
2. Download the **Linux x86-64 AVX2** Stockfish binary from [stockfishchess.org](https://stockfishchess.org/download/).
3. Make it executable: `chmod +x stockfish-ubuntu-x86-64-avx2`
4. Install requirements: `pip3 install -r requirements.txt --break-system-packages`
5. Run: `python3 OmniChess-Linux-x86_64.py`

---

### 🍎 macOS (Apple Silicon)
1. Download the **macOS Apple Silicon** Stockfish binary from [stockfishchess.org](https://stockfishchess.org/download/).
2. Remove the quarantine flag and make it executable:
   ```bash
   xattr -d com.apple.quarantine stockfish-macos-m1-apple-silicon
   chmod +x stockfish-macos-m1-apple-silicon
   ```
3. If macOS still blocks it, go to **System Settings → Privacy & Security** and click **Allow Anyway**.
4. Install requirements: `pip3 install -r requirements.txt`
5. Run: `python3 OmniChess-MacOS-ARM.py`

---

## 📋 Requirements
- **Python 3.x**
- **Pygame** & **Python-Chess**
- **Symbola** or **Unifont** (for proper chess piece rendering on Linux)

---

## 🤝 Credits
- **Stockfish Engine:** Developed by the [Stockfish team](https://stockfishchess.org/).
- **Puzzles:** Powered by the [Lichess.org](https://lichess.org) API.
- **Developer:** Coder787
