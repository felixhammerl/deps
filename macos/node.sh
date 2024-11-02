#!/usr/bin/env zsh

echo "Installing node latest and LTS..."

nvm install node
nvm install --lts
nvm use node

echo "Installing node modules..."

npm install -g standard
npm install -g npm-check-updates

echo "Done!"

