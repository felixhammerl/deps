#!/usr/bin/env zsh

set -eu

echo "Configuring shell..."

cp .zshrc ~/.zshrc

mkdir -p ~/.ssh
touch ~/.ssh/authorized_keys

echo "Done!"
