#!/usr/bin/env zsh

set -eu

echo "Welcome to the grand environment setup extravaganza."

DIR=$(cd "$(dirname "$0")"; pwd)
echo "working relative to $DIR"

if [ -n "$ZSH_VERSION" ]; then
  echo "We're running in zsh, continuing..."
else
  echo "Change your shell to zsh first!"
  exit 1
fi

read -r "should_continue?Do you want to set up your system from scratch? [y/n]" 
if [[ "$should_continue" =~ ^[Yy]$ ]]
then
  echo "Let the games begin!"
else
  exit 1
fi

mkdir -p $HOME/bin
chmod 700 $HOME/bin

("$DIR"/shell.sh)
(source "$HOME/.zshrc" && "$DIR"/apt.sh)
(source "$HOME/.zshrc" && "$DIR"/container.sh)
(source "$HOME/.zshrc" && "$DIR"/yubikey.sh)
(source "$HOME/.zshrc" && "$DIR"/gnome.sh)
(source "$HOME/.zshrc" && "$DIR"/ssh.sh)
(source "$HOME/.zshrc" && "$DIR"/direnv.sh)
(source "$HOME/.zshrc" && "$DIR"/git.sh)
(source "$HOME/.zshrc" && "$DIR"/gpg.sh)
(source "$HOME/.zshrc" && "$DIR"/node.sh)
(source "$HOME/.zshrc" && "$DIR"/python.sh)
(source "$HOME/.zshrc" && "$DIR"/neovim.sh)
(source "$HOME/.zshrc" && "$DIR"/ruby.sh)
(source "$HOME/.zshrc" && "$DIR"/rust.sh)
(source "$HOME/.zshrc" && "$DIR"/tmux.sh)
(source "$HOME/.zshrc" && "$DIR"/vscode.sh)

