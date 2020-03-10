#!/usr/bin/env zsh

set -eu

echo "Configuring bash..."

DIR=$(cd "$(dirname "$0")"; pwd)
echo "working relative to $DIR"

read -p  "Please enter the HOMEBREW_GITHUB_API_TOKEN before proceeding!" HOMEBREW_GITHUB_API_TOKEN
echo "export HOMEBREW_GITHUB_API_TOKEN=\"$HOMEBREW_GITHUB_API_TOKEN\"" >> ~/.zshrc
cat $DIR/.zshrc >> ~/.zshrc

cp $DIR/.tmux.conf ~


