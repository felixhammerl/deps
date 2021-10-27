#!/usr/bin/env zsh

set -eu

echo "Configuring bash..."

DIR=$(cd "$(dirname "$0")"; pwd)
echo "working relative to $DIR"

cp $DIR/.tmux.conf ~
cp $DIR/.tmate.conf ~

mkdir -p ~/.ssh
touch ~/.ssh/authorized_keys
