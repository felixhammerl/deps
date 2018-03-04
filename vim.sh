#!/usr/bin/env bash

set -eu

# cleaning .vim folder
echo "Cleaning .vim folder..."
rm -rfv ~/.vim
mkdir -p ~/.vim
cd ~/.vim/

echo "Setting up .vim folder..."
git clone git@github.com:felixhammerl/vim.git ~/.vim
ln -s ~/.vim/.vimrc ~/.vimrc
./update.sh

echo "vim is ready to use!"
