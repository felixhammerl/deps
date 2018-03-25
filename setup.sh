#!/usr/bin/env bash

set -eu

./macos.sh
./bash.sh
./brew.sh
./vim.sh 
./vscode.sh
./git.sh

echo -e "Please install the following software manually: \n\nShush (App Store)\nTicToc (AppStore)"

