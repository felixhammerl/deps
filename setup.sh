#!/usr/bin/env zsh

set -eu

echo "Welcome to the grand environment setup extravaganza."

DIR=$(cd "$(dirname "$0")"; pwd)
echo "working relative to $DIR"

("$DIR"/macos.sh) && source ~/.zshrc
("$DIR"/shell.sh) && source ~/.zshrc
("$DIR"/brew.sh) && source ~/.zshrc
("$DIR"/node.sh) && source ~/.zshrc
("$DIR"/rust.sh) && source ~/.zshrc
("$DIR"/ruby.sh) && source ~/.zshrc
("$DIR"/python.sh) && source ~/.zshrc
("$DIR"/neovim.sh) && source ~/.zshrc
("$DIR"/vscode.sh) && source ~/.zshrc
("$DIR"/git.sh) && source ~/.zshrc
