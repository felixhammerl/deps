#!/usr/bin/env zsh

set -eu

echo "Configuring GPG..."

mkdir -p ~/.gnupg
cp $DIR/gpg.conf ~/.gnupg
cp $DIR/gpg-agent.conf ~/.gnupg
