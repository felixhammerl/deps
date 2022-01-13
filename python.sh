#!/usr/bin/env zsh

echo "Installing python dependencies..."

pip3 install --upgrade pip
pip3 install pynvim virtualenv

pyenv install 3.8.0
pyenv install 3.10.0

echo "Done!"

