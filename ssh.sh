#!/usr/bin/env zsh

set -eu

mkdir -p ~/.ssh
cat ./ssh-config >> ~/.ssh/config

