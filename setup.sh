#!/usr/bin/env bash

set -eu

./macos.sh
./bash.sh
./brew.sh
./vim.sh 
./vscode.sh

echo -e "Please install the following software manually:\n\nCinch (AppStore)\nShush (App Store)\nTicToc (AppStore)\nJDK (Oracle)"

echo "Please install the following fonts on your system:"
echo "Open Sans"
echo "Adobe Source Code Pro (https://github.com/adobe-fonts/source-code-pro/releases/latest)"
echo "Fira Code (https://github.com/tonsky/FiraCode/releases/latest)"

