#!/usr/bin/env zsh

set -eu

echo "Cleaning up pre-flight"
rm -rfv ~/.config/nvim

echo "Creating dirs"
mkdir -p ~/.config/nvim
mkdir -p ~/.nvim/undo
mkdir -p ~/.nvim/swp
mkdir -p ~/.nvim/backup

echo "Setting up neovim..."
curl https://raw.githubusercontent.com/felixhammerl/vim/master/init.vim > ~/.config/nvim/init.vim
curl https://raw.githubusercontent.com/felixhammerl/vim/master/coc-settings.json > ~/.config/nvim/coc-settings.json

echo "Replacing vim with neovim"
ln -s /usr/local/bin/nvim /usr/local/bin/vi
ln -s /usr/local/bin/nvim /usr/local/bin/vim

echo "done!"
