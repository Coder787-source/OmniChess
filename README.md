OmniChess
An open-source chess project developed entirely in Python.

Features
Stockfish Integration: Engine-driven analysis and gameplay.

PGN Export: Download games to analyze on chess.com or lichess.org.

Flexible Difficulty: Multiple skill levels and custom ELO adjustment.

Time Control: Customizable match duration.

Anti-Cheat: Built-in system to monitor and flag unauthorized move assistance.

Error Logging: Clear diagnostic messages (e.g., CRITICAL ERROR: Stockfish engine not found) to help with troubleshooting.

Prerequisites
Python: Download here

Stockfish Engine: Download here

Other Notes: Place the downloaded .exe in the project root directory and make sure you use the ARM version on ARM computers,and the x86_64 version on x86_64 computers.

Installation
Clone or download this repository.

Open your terminal or command prompt in the project folder.

Install the required dependencies:

Bash
pip install -r requirements.txt
Ensure the Stockfish executable is in the same folder as OmniChess program is in.

Credits
Engine integration provided by the Stockfish Chess Engine authors.

The links to the external programs you need is
https://www.python.org/downloads
https://stockfishchess.org/download/
