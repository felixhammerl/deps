#!/usr/bin/env zsh

echo "Installing node..."

curl -L https://bit.ly/n-install | bash

n latest

echo "Installing node modules..."

npm install -g standard
npm install -g npm-check-updates

echo "Done!"

