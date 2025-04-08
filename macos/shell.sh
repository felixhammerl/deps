#!/usr/bin/env zsh

set -eu

echo "Configuring shell..."

cat >> ~/.zshrc <<HERE

#
# Shell settings
# 

alias ls='ls -lGFh'

HERE

echo "Done!"
