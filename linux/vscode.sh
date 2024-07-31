#!/usr/bin/env zsh

set -eu

echo "Installing vscode ..."

wget -qO- https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > packages.microsoft.gpg
sudo install -D -o root -g root -m 644 packages.microsoft.gpg /etc/apt/keyrings/packages.microsoft.gpg
sudo sh -c 'echo "deb [arch=amd64,arm64,armhf signed-by=/etc/apt/keyrings/packages.microsoft.gpg] https://packages.microsoft.com/repos/code stable main" > /etc/apt/sources.list.d/vscode.list'
rm -f packages.microsoft.gpg

sudo apt install -y apt-transport-https
sudo apt update
sudo apt install -y code

mkdir -p $HOME/.config/Code/User/snippets
cp vscode-settings.json $HOME/.config/Code/User/settings.json
cp vscode-python-snippets.json $HOME/.config/Code/User/snippets/python.json

echo "Done!"
