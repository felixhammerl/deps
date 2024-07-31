#!/usr/bin/env zsh

echo "Configuring shell..."

git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
(~/.fzf/install)

touch ~/.zshrc
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended

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


