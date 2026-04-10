I'll update your README.md with all the requested changes. Here's the complete updated version:

```markdown
# OmniChess

An open-source chess game built entirely in Python — play against Stockfish, a friend, or tackle Lichess puzzles. **Now available as BOTH a desktop application AND a web version (zero install)!**

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
- **Move Sounds** — Distinct audio cues for moves and captures
- **Hints** — Up to 3 engine-powered hints per game
- **Takebacks** — Undo moves with limits that scale with difficulty level
- **Board Coordinates** — a–h and 1–8 labels that flip with your perspective
- **Seasonal Themes** — Board themes that automatically change every month
- **Board Themes** — Multiple year-round colour options, cycle with the **T** key
- **Anti-Cheat** — Fullscreen lockdown during gameplay blocks external assistance *(desktop only)*
- **Fully Offline** — Works without an internet connection once installed *(puzzles require internet, web version requires internet)*
- **Cross-Platform** — Windows 10/11 (x86-64 & ARM64), Linux (x86-64 & ARM), macOS (Apple Silicon & Intel), and any device with a web browser

---

## 🌐 Web Version

Play instantly in your browser — no installation required!

**🔗 Play now:** [https://coder787-source.github.io/OmniChess/](https://coder787-source.github.io/OmniChess/)

**What's included:**
- Full Stockfish engine integration with 8 difficulty levels
- Daily puzzles from Lichess
- Local multiplayer (hotseat mode)
- Time controls (blitz, rapid, classical)
- Board themes and seasonal themes
- Move history and PGN download
- Opening name display
- Move sounds and evaluation bar

**Perfect for:**
- **ChromeOS users** — No Linux container needed, runs natively in Chrome
- **School/work computers** — No admin rights or installation required
- **Quick games** — Jump in and play in seconds from any browser

**Limitations:**
- No anti-cheat fullscreen lockdown (browser security restrictions)
- Requires an internet connection (no offline mode)

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

2. Download the **Linux x86-64** Stockfish binary from [stockfishchess.org](https://stockfishchess.org/download/). Open `OmniChess-Linux-x86_64.py` in a text editor, find the `STOCKFISH_PATH` variable at the top, and rename your binary to match that name exactly.

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

### 🪟 Windows 10/11 x86-64

> ⚠️ Make sure Python is installed and **added to PATH**. During installation, check **"Add Python to PATH"** before clicking Install.

1. Download the **x86-64 AVX2** Stockfish binary from [stockfishchess.org](https://stockfishchess.org/download/). Open `OmniChess-Windows10-11-x86-64.py` in a text editor, find the `STOCKFISH_PATH` variable at the top, and rename your binary to match that name exactly.

2. Place it in the same folder as `OmniChess-Windows10-11-x86-64.py`.

3. Install Python dependencies:
   ```
   pip install pygame python-chess
   ```

4. Run:
   ```
   python OmniChess-Windows10-11-x86-64.py
   ```
   > If `python` doesn't work, try `python3`.

---

### 🪟 Windows 10/11 ARM64

> ⚠️ Make sure Python is installed and **added to PATH**. During installation, check **"Add Python to PATH"** before clicking Install.

1. Download the **ARM64** Stockfish binary from [stockfishchess.org](https://stockfishchess.org/download/). Open `OmniChess-Windows10-11-ARM64.py` in a text editor, find the `STOCKFISH_PATH` variable at the top, and rename your binary to match that name exactly.

2. Place it in the same folder as `OmniChess-Windows10-11-ARM64.py`.

3. Install Python dependencies:
   ```
   pip install pygame python-chess
   ```

4. Run:
   ```
   python OmniChess-Windows10-11-ARM64.py
   ```
   > If `python` doesn't work, try `python3`.

---

### 🍎 macOS (Apple Silicon)

1. Download the **macOS Apple Silicon** Stockfish binary from [stockfishchess.org](https://stockfishchess.org/download/). Open `OmniChess-MacOS-ARM.py` in a text editor, find the `STOCKFISH_PATH` variable at the top, and rename your binary to match that name exactly.

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
   python3 OmniChess-MacOS-ARM.py
   ```

---

### 🍎 macOS (Intel)

1. Download the **macOS x86-64** Stockfish binary from [stockfishchess.org](https://stockfishchess.org/download/). Open `OmniChess-MacOS-Intel-x86.py` in a text editor, find the `STOCKFISH_PATH` variable at the top, and rename your binary to match that name exactly.

2. Remove the quarantine flag and make it executable:
   ```bash
   xattr -d com.apple.quarantine stockfish-macos-x86-64
   chmod +x stockfish-macos-x86-64
   ```

3. If macOS still blocks it, go to **System Settings → Privacy & Security** and click **Allow Anyway**.

4. Install Python dependencies:
   ```bash
   pip3 install pygame python-chess
   ```

5. Run:
   ```bash
   python3 OmniChess-MacOS-Intel-x86.py
   ```

---

## 📋 Requirements

### Desktop Version

| Requirement | Details |
|---|---|
| Python | 3.8+ — [python.org/downloads](https://www.python.org/downloads/) |
| pygame | `pip install pygame` |
| python-chess | `pip install python-chess` |
| Symbola font | Linux only — `sudo apt install fonts-symbola` |
| Stockfish | Download from [stockfishchess.org](https://stockfishchess.org/download/) |

### Web Version

| Requirement | Details |
|---|---|
| Browser | Any modern browser (Chrome, Firefox, Safari, Edge) |
| Internet | Required for gameplay |
| JavaScript | Must be enabled |

---

## 📱 Supported Platforms

### Desktop (Officially Tested)
- **Windows 10/11** — x86-64 & ARM64
- **Linux** — x86-64 & ARM/Raspberry Pi
- **macOS** — Apple Silicon & Intel

### Web (Works Anywhere)
- **ChromeOS** — No Linux container needed, runs directly in Chrome
- **Windows/Mac/Linux** — No installation required
- **School/work computers** — Works without admin rights
- **Mobile devices** — Play on tablets and phones with a browser

---

## 🔧 Unsupported Operating Systems (Desktop Only)

OmniChess Desktop is **not officially supported** on the following platforms:

- **Windows 8 / 8.1** — Python 3.8+ and modern pygame versions may not function correctly
- **FreeBSD** — Stockfish compilation and pygame compatibility issues likely
- **Older macOS versions** — Pre-Catalina systems may have compatibility problems

> 💡 **ChromeOS users**: Instead of using the Linux container (which has Wayland, audio, and input limitations), we strongly recommend using the **[Web Version](https://coder787-source.github.io/OmniChess/)** for the best experience.

If you choose to run the desktop version on unsupported platforms:
- ⚠️ **No technical support** will be provided for installation or runtime issues
- ⚠️ **Stockfish compilation** may fail or require significant manual tweaking
- ⚠️ **Pygame and python-chess** may have compatibility problems

---

## 🤝 Credits

- **Stockfish Engine** — [stockfishchess.org](https://stockfishchess.org/)
- **Puzzles** — Powered by the [Lichess.org](https://lichess.org) open API
- **Developer** — [Coder787-source](https://github.com/Coder787-source)

---

## 📰 Featured In
- [Outskirts Forum](https://outskirts.altervista.org/forum/viewtopic.php?t=6053)
```
