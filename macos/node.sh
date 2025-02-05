#!/usr/bin/env zsh

echo "Installing node latest and LTS..."

cat >> ~/.zshrc <<HERE

#
# Node settings
# 

export NODE_OPTIONS="--no-experimental-require-module"

HERE

nvm install node
nvm install --lts
nvm use node


echo "Installing node modules..."

npm install -g standard
npm install -g npm-check-updates
npm install -g typescript

echo "Done!"

