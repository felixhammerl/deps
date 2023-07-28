#!/usr/bin/env zsh

set -eu

echo "Configuring tmux..."

cp .tmux.conf ~
cp .tmate.conf ~

echo "Done!"
