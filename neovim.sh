#!/usr/bin/env bash

set -eu

echo "cleaning up neovim folder"
rm -rfv ~/.config/nvim

echo "setting up neovim folder"
DIR=$(cd "$(dirname "$0")"; pwd)
echo "working relative to $DIR"
mkdir -p ~/.config/nvim
cp "$DIR"/neovim-config.vim ~/.config/nvim/init.vim

echo "done!"
