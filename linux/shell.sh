#!/usr/bin/env zsh

echo "Configuring shell..."

git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
(~/.fzf/install)

cat >> ~/.zshrc <<HERE

#
# Shell settings
# 

alias ls='ls -lGFh'

HERE

echo "Done!"

