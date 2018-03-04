#!/usr/bin/env bash

set -eu

echo "Configuring bash..."

DIR=$(cd "$(dirname "$0")"; pwd)
echo $DIR
cp $DIR/.bash_profile ~

while true; do
  read -p  "Please enter the HOMEBREW_GITHUB_API_TOKEN before proceeding!" HOMEBREW_GITHUB_API_TOKEN
  if [ -z "$HOMEBREW_GITHUB_API_TOKEN" ]; then
    echo "Github API Token is missing."
    exit 1
  fi
done

echo "export HOMEBREW_GITHUB_API_TOKEN=\"$HOMEBREW_GITHUB_API_TOKEN\"" >> ~/.bash_profile

