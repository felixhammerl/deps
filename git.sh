#!/usr/bin/env zsh

set -eu

echo "Installing git config..."

cp .gitconfig ~/.gitconfig

echo "Installing scm breeze..."

git clone https://github.com/scmbreeze/scm_breeze.git ~/.scm_breeze
~/.scm_breeze/install.sh

cat >> ~/.zshrc <<HERE

#
# Git settings
# 

zsh_prompt_parse_git_branch() {
  git branch 2> /dev/null | sed -e $'s/\x1b\\[[0-9;]*[a-zA-Z]//g' -e '/^[^*]/d' -e 's/* \[.*\] \(.*\)/(\1)/g'
}

setopt PROMPT_SUBST
PROMPT='%{$fg[yellow]%}[%D{%f/%m/%y} %D{%H:%M:%S}] %~ %{%F{green}%}$(zsh_prompt_parse_git_branch)%{%F{none}%}
> '

HERE

echo "Done!"

