OmniChess
An open-source chess project developed entirely in Python.
Features

Stockfish Integration: Engine-driven analysis and gameplay.
PGN Export: Download games to analyze on chess.com or lichess.org.
Flexible Difficulty: Multiple skill levels and custom ELO adjustment.
Time Control: Customizable match duration.
Anti-Cheat: Built-in system to monitor and flag unauthorized move assistance.
Error Logging: Clear diagnostic messages to help with troubleshooting.
Cross-Platform: Supports Windows (x86-64 and ARM64) and Linux ARM.

Prerequisites

Python: https://www.python.org/downloads
Stockfish Engine: https://stockfishchess.org/download/

Installation

Clone or download this repository.
Open your terminal or command prompt in the project folder.
Install the required dependencies:

bashpip install -r requirements.txt
Platform Setup
Windows x86-64:
Download the x86-64 AVX2 Stockfish binary, place it in the same folder as OmniChess-Windows-x86-64.py and run that file.
Windows ARM64:
Download the ARM64 Stockfish binary, place it in the same folder as OmniChess-Windows-ARM64.py and run that file.
Linux ARM (e.g. Raspberry Pi 5):
Stockfish does not provide official Linux ARM binaries so you must compile it from source:
bashsudo apt install git g++ make
git clone https://github.com/official-stockfish/Stockfish.git
cd Stockfish/src
make -j4 build
Copy the compiled stockfish binary to the same folder as OmniChess-Linux-ARM.py and run that file.
Credits
Engine integration provided by the Stockfish Chess Engine authors.
