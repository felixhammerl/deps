#!/usr/bin/env zsh

set -eu

echo "Cleaning up pre-flight"
rm -rfv ~/.config/nvim
rm -rfv ~/.vim
rm -f ~/.vimrc

echo "Setting up .vim folder..."
git clone git@github.com:felixhammerl/vim.git ~/.config/nvim

echo "Creating swap dir"
mkdir -p ~/.nvim/undo
mkdir -p ~/.nvim/swp
mkdir -p ~/.nvim/backup

echo "Replacing vim with neovim"
ln -s /usr/local/bin/nvim /usr/local/bin/vi
ln -s /usr/local/bin/nvim /usr/local/bin/vim

echo "done!"
