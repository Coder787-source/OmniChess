ChessBot
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

Note: Place the downloaded .exe in the project root directory.

Installation
Clone or download this repository.

Open your terminal or command prompt in the project folder.

Install the required dependencies:

Bash
pip install -r requirements.txt
Ensure the Stockfish executable is in the same folder as StockFish_ChessGame.py.

Running the Game
Run the following command:

Bash
python StockFish_ChessGame.py

Credits
Engine integration provided by the Stockfish Chess Engine authors.
