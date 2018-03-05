#!/usr/bin/env bash

set -eu

./macos.sh
./bash.sh
./brew.sh
./vim.sh 
./vscode.sh

echo -e "Please install the following software manually:\n\nCinch (AppStore)\nShush (App Store)\nTicToc (AppStore)\nJDK (Oracle)"

