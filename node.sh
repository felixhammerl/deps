#!/usr/bin/env zsh

echo "Creating folder for node versions"

sudo mkdir -p /usr/local/n
sudo chown "$(whoami)" /usr/local/n

echo "Installing node latest and LTS..."

n latest

echo "Installing node modules..."

npm install -g standard
npm install -g npm-check-updates

echo "Done!"

