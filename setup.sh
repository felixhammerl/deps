#!/usr/bin/env zsh

set -eu

echo "Welcome to the grand environment setup extravaganza."

DIR=$(cd "$(dirname "$0")"; pwd)
echo "working relative to $DIR"

"$DIR"/macos.sh
"$DIR"/shell.sh
"$DIR"/brew.sh
"$DIR"/node.sh
"$DIR"/rust.sh
"$DIR"/ruby.sh
"$DIR"/python.sh
"$DIR"/neovim.sh
"$DIR"/vscode.sh
"$DIR"/git.sh

echo -e "Please enable Fira Code and font ligatures and install the following IDEA plugins:\\n\\nIdeaVim\\nRust\\nScala\\nToml\\nMaterial Theme UI
"
