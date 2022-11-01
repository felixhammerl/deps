#!/usr/bin/env zsh

echo "Configuring rbenv ..."

rbenv init

cat >> ~/.zshrc <<HERE

#
# Ruby settings
# 

eval "$(rbenv init -)"

HERE

echo "Done!"

