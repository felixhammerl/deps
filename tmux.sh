#!/usr/bin/env zsh

set -eu

echo "Configuring tmux..."

cp $DIR/.tmux.conf ~
cp $DIR/.tmate.conf ~

echo "Done!"
