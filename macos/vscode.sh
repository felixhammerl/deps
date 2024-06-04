#!/usr/bin/env zsh

set -eu

echo "Installing vscode ..."

rm -f /usr/local/bin/code
ln -s /Applications/Visual\ Studio\ Code.app/Contents/Resources/app/bin/code /usr/local/bin/code

mkdir -p $HOME/.config/Code/User/snippets

cp vscode-settings.json $HOME/.config/Code/User/settings.json
cp vscode-python-snippets.json $HOME/.config/Code/User/snippets/python.json

echo "Done!"
