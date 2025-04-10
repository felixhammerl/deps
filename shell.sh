#!/usr/bin/env zsh

set -eu

echo "Configuring shell..."

echo "Installing curl and oh-my-zsh"
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended

cat >> ~/.zshrc <<HERE

#
# Shell settings
# 

alias ls='ls -lGFh'
ZSH_THEME="rkj-repos"

HERE

echo "Done!"
