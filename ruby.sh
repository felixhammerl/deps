#!/usr/bin/env zsh

echo "Configuring rbenv ..."

rm -f ~/.zprofile # annoyingly, rbenv adds this to the profile, when PATH is not properly set yet

cat >> ~/.zshrc <<HERE

#
# Ruby settings
# 

eval "\$(rbenv init -)"

HERE

echo "Done!"

