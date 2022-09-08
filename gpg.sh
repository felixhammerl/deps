#!/usr/bin/env zsh

set -eu

echo "Configuring GPG..."

DIR=$(cd "$(dirname "$0")"; pwd)
echo "working relative to $DIR"

mkdir -p ~/.gnupg
cp $DIR/gpg.conf ~/.gnupg
cp $DIR/gpg-agent.conf ~/.gnupg
