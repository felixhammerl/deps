#!/usr/bin/env bash

echo "Creating folder for node versions"

sudo mkdir -p /usr/local/n
sudo chown "$(whoami)" /usr/local/n

echo "Installing node latest and LTS..."

n latest
n lts

echo "Installing node modules..."

npm install -g standard

echo "Done!"

