#!/usr/bin/env zsh

echo "Configuring direnv ..."

cat >> ~/.zshrc <<HERE

#
# Direnv settings
# 

eval "$(direnv hook zsh)"

HERE

echo "Done!"

