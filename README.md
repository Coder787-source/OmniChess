 # OmniChess

An open-source chess game built entirely in Python — play against Stockfish, a friend, or tackle Lichess puzzles.

<p align="center">
  <img src="gameplay.png" alt="OmniChess gameplay" width="45%" />
  &nbsp;&nbsp;
  <img src="icon-64.png" alt="OmniChess icon" width="10%" />
</p>

---


## ✨ Features

- **Stockfish Integration** — Engine-driven gameplay across 8 difficulty levels plus custom ELO mode (100–3190)
- **Local Multiplayer** — Play against a friend on the same machine
- **Lichess Puzzle API** — Practice with an infinite stream of tactical puzzles
- **Adaptive Puzzle Difficulty** — Automatically adjusts based on your solve speed
- **Opening Name Display** — Identifies your opening in real time (Ruy Lopez, Sicilian Najdorf, and 60+ others)
- **Post-Game PGN Export** — Download any game to analyse on chess.com or lichess.org
- **Rematch** — Instantly replay against the same opponent with one click
- **Eval Bar** — Live evaluation bar shows who's winning throughout the game
- **Hints** — Up to 3 engine-powered hints per game
- **Takebacks** — Undo moves with limits that scale with difficulty level
- **Board Coordinates** — a–h and 1–8 labels that flip with your perspective
- **Seasonal Themes** — Board themes that automatically change every month
- **Board Themes** — Multiple year-round colour options, cycle with the **T** key
- **Anti-Cheat** — Fullscreen lockdown during gameplay blocks external assistance
- **Fully Offline** — Works without an internet connection once installed *(puzzles require internet)*
- **Cross-Platform** — Windows (x86-64 & ARM64), Linux (x86-64 & ARM), and macOS (Apple Silicon)

---

## 🚀 Installation

Choose your platform below.

---

### 🐧 Linux ARM / Raspberry Pi

> 🛍️ Also available on the [Snap Store](https://snapcraft.io/omnichess-coder787) — `snap install omnichess-coder787`

#### ⚡ Auto Installer (Recommended)

The auto installer handles all dependencies, compiles Stockfish for your hardware, and adds OmniChess to your application menu.

**Install:**
```bash
wget -qO- https://raw.githubusercontent.com/Coder787-source/OmniChess/main/install.sh | bash
```

**Uninstall:**
```bash
wget -qO- https://raw.githubusercontent.com/Coder787-source/OmniChess/main/uninstall.sh | bash
```

> ⏱️ Stockfish compilation may take **3–30 minutes** depending on your Pi model.

#### 🔧 Manual Install

> 💡 Only needed if you prefer not to use the auto installer above.

1. Install the Symbola font:
   ```bash
   sudo apt install fonts-symbola
   ```

2. Compile Stockfish for ARM:
   ```bash
   git clone --depth=1 https://github.com/official-stockfish/Stockfish.git
   cd Stockfish/src
   make -j$(nproc) build ARCH=armv8
   cp stockfish ~/OmniChess/stockfish-linux-arm64
   chmod +x ~/OmniChess/stockfish-linux-arm64
   ```

3. Install Python dependencies:
   ```bash
   pip3 install pygame python-chess --break-system-packages
   ```

4. Run:
   ```bash
   python3 OmniChess-Linux-ARM.py
   ```

---

### 🐧 Linux x86-64

1. Install the Symbola font:
   ```bash
   sudo apt install fonts-symbola
   ```

2. Download the **Linux x86-64** Stockfish binary from [stockfishchess.org](https://stockfishchess.org/download/) and rename it to `stockfish-linux-x86_64`.

3. Make it executable:
   ```bash
   chmod +x stockfish-linux-x86_64
   ```

4. Install Python dependencies:
   ```bash
   pip3 install pygame python-chess --break-system-packages
   ```

5. Run:
   ```bash
   python3 OmniChess-Linux-x86_64.py
   ```

---

### 🪟 Windows x86-64

> ⚠️ Make sure Python is installed and **added to PATH**. During installation, check **"Add Python to PATH"** before clicking Install.

1. Download the **x86-64 AVX2** Stockfish binary from [stockfishchess.org](https://stockfishchess.org/download/) and rename it to `stockfish-windows-x86-64-avx2.exe`.

2. Place it in the same folder as `OmniChess-Windows-x86-64.py`.

3. Install Python dependencies:
   ```
   pip install pygame python-chess
   ```

4. Run:
   ```
   python OmniChess-Windows-x86-64.py
   ```
   > If `python` doesn't work, try `python3`.

---

### 🪟 Windows ARM64

> ⚠️ Make sure Python is installed and **added to PATH**. During installation, check **"Add Python to PATH"** before clicking Install.

1. Download the **ARM64** Stockfish binary from [stockfishchess.org](https://stockfishchess.org/download/) and rename it to `stockfish-windows-arm64.exe`.

2. Place it in the same folder as `OmniChess-Windows-ARM.py`.

3. Install Python dependencies:
   ```
   pip install pygame python-chess
   ```

4. Run:
   ```
   python OmniChess-Windows-ARM.py
   ```
   > If `python` doesn't work, try `python3`.

---

### 🍎 macOS (Apple Silicon)

1. Download the **macOS Apple Silicon** Stockfish binary from [stockfishchess.org](https://stockfishchess.org/download/) and rename it to `stockfish-macos-m1-apple-silicon`.

2. Remove the quarantine flag and make it executable:
   ```bash
   xattr -d com.apple.quarantine stockfish-macos-m1-apple-silicon
   chmod +x stockfish-macos-m1-apple-silicon
   ```

3. If macOS still blocks it, go to **System Settings → Privacy & Security** and click **Allow Anyway**.

4. Install Python dependencies:
   ```bash
   pip3 install pygame python-chess
   ```

5. Run:
   ```bash
   python3 OmniChess-macOS-ARM.py
   ```

---

## 📋 Requirements

| Requirement | Details |
|---|---|
| Python | 3.8+ — [python.org/downloads](https://www.python.org/downloads/) |
| pygame | `pip install pygame` |
| python-chess | `pip install python-chess` |
| Symbola font | Linux only — `sudo apt install fonts-symbola` |
| Stockfish | Download from [stockfishchess.org](https://stockfishchess.org/download/) |

---

## 🤝 Credits

- **Stockfish Engine** — [stockfishchess.org](https://stockfishchess.org/)
- **Puzzles** — Powered by the [Lichess.org](https://lichess.org) open API
- **Developer** — [Coder787-source](https://github.com/Coder787-source)
