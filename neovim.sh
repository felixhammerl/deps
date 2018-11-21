#!/usr/bin/env bash

set -eu

echo "Cleaning up pre-flight"
rm -rfv ~/.config/nvim
rm -rfv ~/.vim
rm -f ~/.vimrc

echo "Setting up .vim folder..."
git clone git@github.com:felixhammerl/vim.git ~/.vim
ln -s ~/.vim/.vimrc ~/.vimrc

echo "Creating swap dir"
mkdir -p ~/.vim/swap

echo "setting up neovim folder"
DIR=$(cd "$(dirname "$0")"; pwd)
mkdir -p ~/.config/nvim
cp "$DIR"/neovim-config.vim ~/.config/nvim/init.vim

echo "Replacing vim with neovim"
ln -s /usr/local/bin/nvim /usr/local/bin/vi
ln -s /usr/local/bin/nvim /usr/local/bin/vim

echo "done!"
