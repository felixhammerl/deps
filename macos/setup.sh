#!/usr/bin/env zsh

set -eu

echo "Welcome to the grand environment setup extravaganza."

DIR=$(cd "$(dirname "$0")"; pwd)
echo "working relative to $DIR"

read -r "should_continue?Do you want to set up your system from scratch? [y/n]" 
if [[ "$should_continue" =~ ^[Yy]$ ]]
then
  echo "Let the games begin!"
else
  exit 1
fi

("$DIR"/macos.sh)
("$DIR"/brew.sh)
("$DIR"/shell.sh)
(source "$HOME/.zshrc" && "$DIR"/ssh.sh)
(source "$HOME/.zshrc" && "$DIR"/direnv.sh)
(source "$HOME/.zshrc" && "$DIR"/git.sh)
(source "$HOME/.zshrc" && "$DIR"/gpg.sh)
(source "$HOME/.zshrc" && "$DIR"/java.sh)
(source "$HOME/.zshrc" && "$DIR"/node.sh)
(source "$HOME/.zshrc" && "$DIR"/python.sh)
(source "$HOME/.zshrc" && "$DIR"/poetry.sh)
(source "$HOME/.zshrc" && "$DIR"/neovim.sh)
(source "$HOME/.zshrc" && "$DIR"/ruby.sh)
(source "$HOME/.zshrc" && "$DIR"/rust.sh)
(source "$HOME/.zshrc" && "$DIR"/tmux.sh)
(source "$HOME/.zshrc" && "$DIR"/vscode.sh)
(source "$HOME/.zshrc" && "$DIR"/container.sh)

