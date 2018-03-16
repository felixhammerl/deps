#!/usr/bin/env bash

set -eu

echo "Configuring bash..."

DIR=$(cd "$(dirname "$0")"; pwd)
echo $DIR
cp $DIR/.bash_profile ~

git clone git://github.com/scmbreeze/scm_breeze.git ~/.scm_breeze
~/.scm_breeze/install.sh

read -p  "Please enter the HOMEBREW_GITHUB_API_TOKEN before proceeding!" HOMEBREW_GITHUB_API_TOKEN
echo "export HOMEBREW_GITHUB_API_TOKEN=\"$HOMEBREW_GITHUB_API_TOKEN\"" >> ~/.bash_profile

