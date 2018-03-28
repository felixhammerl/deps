#!/usr/bin/env bash

set -eu

echo "Cleaning .vim folder..."

rm -rfv ~/.vim
rm -f ~/.vimrc

echo "Setting up .vim folder..."
git clone git@github.com:felixhammerl/vim.git ~/.vim
ln -s ~/.vim/.vimrc ~/.vimrc
~/.vim/update.sh

mkdir -p ~/.vim/swap

echo "vim is ready to use!"
