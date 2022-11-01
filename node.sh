#!/usr/bin/env zsh

echo "Creating folder for node versions"

sudo mkdir -p /usr/local/n
sudo chown -R $(whoami) /usr/local/n
sudo mkdir -p /usr/local/bin /usr/local/lib /usr/local/include /usr/local/share
sudo chown -R $(whoami) /usr/local/bin /usr/local/lib /usr/local/include /usr/local/share

echo "Installing node latest and LTS..."

n latest

echo "Installing node modules..."

npm install -g standard
npm install -g npm-check-updates
npm install -g yarn

cat >> ~/.zshrc <<HERE

#
# Node settings
# 



HERE


echo "Done!"

