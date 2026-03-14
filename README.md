# OmniChess
An open-source chess project developed entirely in Python.
## Features
- **Stockfish Integration:** Engine-driven analysis and gameplay.
- **PGN Export:** Download games to analyze on chess.com or lichess.org.
- **Flexible Difficulty:** Multiple skill levels and custom ELO adjustment.
- **Time Control:** Customizable match duration.
- **Anti-Cheat:** Built-in system to monitor and flag unauthorized move assistance.
- **Error Logging:** Clear diagnostic messages to help with troubleshooting.
- **Cross-Platform:** Supports Windows (x86-64 and ARM64), Linux (x86-64 and ARM), and macOS (ARM).
## Prerequisites
- Python: https://www.python.org/downloads
- Stockfish Engine: https://stockfishchess.org/download/
## Installation
1. Clone or download this repository.
2. Open your terminal or command prompt in the project folder.
3. Install the required dependencies:
```bash
pip install -r requirements.txt
```
## Platform Setup
**Windows x86-64:**
Download the x86-64 AVX2 Stockfish binary, place it in the same folder as `OmniChess-Windows-x86-64.py` and run that file.
**Windows ARM64:**
Download the ARM64 Stockfish binary, place it in the same folder as `OmniChess-Windows-ARM64.py` and run that file.
**Linux x86-64:**
Download the Linux x86-64 AVX2 Stockfish binary from stockfishchess.org, place it in the same folder as `OmniChess-Linux-x86-64.py` and run that file.
**Linux ARM (e.g. Raspberry Pi 5):**
Stockfish does not provide official Linux ARM binaries so you must compile it from source:
```bash
sudo apt install git g++ make
git clone https://github.com/official-stockfish/Stockfish.git
cd Stockfish/src
make -j4 build
```
Copy the compiled `stockfish` binary to the same folder as `OmniChess-Linux-ARM.py` and run that file.
**macOS (Apple Silicon):**
Download the macOS Apple Silicon Stockfish binary from stockfishchess.org and place it in the same folder as `OmniChess-MacOS-ARM.py`.

macOS will likely block the Stockfish binary on first use. To fix this, run the following in Terminal:
```bash
xattr -d com.apple.quarantine /path/to/stockfish-macos-m1-apple-silicon
chmod +x /path/to/stockfish-macos-m1-apple-silicon
```
Then go to **System Settings → Privacy & Security** and click **Allow Anyway** if prompted. After that, run `OmniChess-MacOS-ARM.py` normally.

## Credits
Engine integration provided by the Stockfish Chess Engine authors.
