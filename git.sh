#!/usr/bin/env zsh

set -eu

echo "Installing git config..."

cp .gitconfig ~/.gitconfig

echo "Installing scm breeze..."

git clone git://github.com/scmbreeze/scm_breeze.git ~/.scm_breeze
~/.scm_breeze/install.sh

echo "Done!"

