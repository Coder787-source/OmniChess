```markdown
# OmniChess
An open-source chess project developed entirely in Python.

![OmniChess gameplay](gameplay.png) ![OmniChess icon](icon-64.png)

[![Get it from the Snap Store](https://snapcraft.io/static/images/badges/en/snap-store-black.svg)](https://snapcraft.io/omnichess-coder787)

---

## 🚀 Features

- **Stockfish Integration** — Engine-driven gameplay across 8 difficulty levels plus custom ELO mode.
- **Local Multiplayer** — Play against a friend on the same machine.
- **Lichess Puzzle API** — Practice with an infinite stream of tactical puzzles with adaptive difficulty.
- **Adaptive Puzzle Difficulty** — Automatically increases or decreases puzzle difficulty based on your solve speed.
- **Opening Name Display** — Identifies your opening in real time (Ruy Lopez, Sicilian Najdorf, and 60+ others).
- **Post-Game PGN Export** — Download any game to analyze on chess.com or lichess.org.
- **Rematch** — Instantly replay against the same opponent with one click.
- **Flexible Difficulty** — 8 preset skill levels plus custom ELO adjustment from 100 to 3190.
- **Eval Bar** — Live evaluation bar shows who's winning throughout the game.
- **Hints** — Up to 3 engine-powered hints per game.
- **Takebacks** — Undo moves with limits that scale with difficulty level.
- **Board Coordinates** — a–h and 1–8 labels that flip with your perspective.
- **Seasonal Themes** — Unique board themes that automatically change every month.
- **Board Themes** — Multiple year-round board colour options, cycle with T key.
- **Anti-Cheat** — Fullscreen lockdown during gameplay blocks external assistance.
- **Fully Offline** — Works without an internet connection once installed (puzzles require internet).
- **Cross-Platform** — Native support for Windows (x86-64 & ARM64), Linux (x86-64 & ARM), and macOS (Apple Silicon).

---

## 🐧 Linux ARM / Raspberry Pi Setup

### ⚡ Auto Installer (Recommended)

Handles all dependencies, compiles Stockfish for your specific hardware, and adds OmniChess to your application menu automatically.

**Install:**
```bash
wget -qO- [https://raw.githubusercontent.com/Coder787-source/OmniChess/main/install.sh](https://raw.githubusercontent.com/Coder787-source/OmniChess/main/install.sh) | bash
```

**Uninstall:**
```bash
wget -qO- [https://raw.githubusercontent.com/Coder787-source/OmniChess/main/uninstall.sh](https://raw.githubusercontent.com/Coder787-source/OmniChess/main/uninstall.sh) | bash
```

> ⚠️ **Note:** Stockfish compilation is optimised for your hardware and may take 3–30 minutes depending on your Pi model.

---

## 💻 Other Platforms

### 🪟 Windows x86-64

> ⚠️ **Note:** Make sure Python is installed and added to PATH. During Python installation, check **"Add Python to PATH"** before clicking Install.

1. Download the **x86-64 AVX2** Stockfish binary from [stockfishchess.org](https://stockfishchess.org/download/) and rename it to `stockfish-windows-x86-64-avx2.exe`.
2. Place it in the same folder as `OmniChess-Windows-x86-64.py`.
3. Install requirements:
   ```bash
   pip install pygame python-chess
   ```
4. Run:
   ```bash
   python OmniChess-Windows-x86-64.py
   ```

---

### 🪟 Windows ARM64

1. Download the **ARM64** Stockfish binary from [stockfishchess.org](https://stockfishchess.org/download/) and rename it to `stockfish-windows-arm64.exe`.
2. Place it in the same folder as `OmniChess-Windows-ARM.py`.
3. Install requirements:
   ```bash
   pip install pygame python-chess
   ```
4. Run:
   ```bash
   python OmniChess-Windows-ARM.py
   ```

---

### 🐧 Linux x86-64 (Manual)

1. Install Symbola font:
   ```bash
   sudo apt install fonts-symbola
   ```
2. Download the **Linux x86-64** Stockfish binary from [stockfishchess.org](https://stockfishchess.org/download/) and rename it to `stockfish-linux-x86_64`.
3. Make it executable:
   ```bash
   chmod +x stockfish-linux-x86_64
   ```
4. Install requirements:
   ```bash
   pip3 install pygame python-chess --break-system-packages
   ```
5. Run:
   ```bash
   python3 OmniChess-Linux-x86_64.py
   ```

---

### 🍎 macOS (Apple Silicon)

1. Download the **macOS Apple Silicon** Stockfish binary from [stockfishchess.org](https://stockfishchess.org/download/) and rename it to `stockfish-macos-m1-apple-silicon`.
2. Remove the quarantine flag and make it executable:
   ```bash
   xattr -d com.apple.quarantine stockfish-macos-m1-apple-silicon
   chmod +x stockfish-macos-m1-apple-silicon
   ```
3. If macOS still blocks it, go to **System Settings → Privacy & Security** and click **Allow Anyway**.
4. Install requirements:
   ```bash
   pip3 install pygame python-chess
   ```
5. Run:
   ```bash
   python3 OmniChess-macOS-ARM.py
   ```

---

## 📋 Requirements

- **Python 3.8+** — [python.org/downloads](https://www.python.org/downloads/)
- **pygame** — `pip install pygame`
- **python-chess** — `pip install python-chess`
- **Symbola font** — for correct chess piece rendering on Linux (`sudo apt install fonts-symbola`)

---

## 🤝 Credits

- **Stockfish Engine** — Developed by the [Stockfish team](https://stockfishchess.org/).
- **Puzzles** — Powered by the [Lichess.org](https://lichess.org) open API.
