#!/usr/bin/env zsh

echo "Installing python dependencies..."

pip2 install --upgrade pip
pip install --upgrade pip
pip install pynvim virtualenv

echo "Done!"

