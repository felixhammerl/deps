#!/usr/bin/env zsh

echo "Configuring rbenv ..."

rm ~/.zprofile # annoyingly, rbenv adds this to the profile, when PATH is not properly set yet
rbenv init

cat >> ~/.zshrc <<HERE

#
# Ruby settings
# 

eval "\$(rbenv init -)"

HERE

echo "Done!"

