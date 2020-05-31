#!/usr/bin/env zsh

set -eu

echo "Configuring bash..."

DIR=$(cd "$(dirname "$0")"; pwd)
echo "working relative to $DIR"

cp $DIR/.tmux.conf ~

