#!/usr/bin/env zsh

set -eu

echo "Configuring shell..."

sudo apt install curl

sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

cp .zshrc ~/.zshrc

cat >> ~/.profile <<HERE

setxkbmap -option caps:swapescape

HERE


echo "Done!"
