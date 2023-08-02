#!/usr/bin/env zsh

set -eu

echo "Configuring shell..."

touch ~/.zshrc
sh -c "$(wget https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh -O -)"

cat >> ~/.zshrc <<HERE

#
# Shell settings
# 

alias ls='ls -lGFh'

HERE

echo "Done!"
