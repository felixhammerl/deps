#!/usr/bin/env zsh

set -eu

echo "Configuring shell..."

sudo apt install curl

touch ~/.zshrc
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

cat >> ~/.zshrc <<HERE

#
# Shell settings
# 

alias ls='ls -lGFh'

HERE


cat >> ~/.profile <<HERE

setxkbmap -option caps:swapescape

HERE


echo "Done!"
