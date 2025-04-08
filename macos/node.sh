#!/usr/bin/env zsh

echo "Installing node latest and LTS..."

cat >> ~/.zshrc <<HERE

#
# Node settings
# 

export NODE_OPTIONS="--no-experimental-require-module"
export NVM_DIR="\$HOME/.nvm"
[ -s "\$NVM_DIR/nvm.sh" ] && \. "\$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "\$NVM_DIR/bash_completion" ] && \. "\$NVM_DIR/bash_completion"  # This loads nvm bash_completion

HERE

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

nvm install node
nvm install --lts
nvm use node

echo "Installing node modules..."

npm install -g typescript

echo "Done!"

