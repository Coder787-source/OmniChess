#!/bin/bash
install_dir="$HOME/OmniChess"

rm -rf "$install_dir"
rm -f /usr/local/bin/omnichess
remove_desktop_entry "OmniChess"
