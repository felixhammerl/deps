#!/usr/bin/env bash

echo "Installing python dependencies..."

sudo python -m ensurepip

pip2 install --upgrade setuptools pip
pip3 install --upgrade setuptools pip

pip3 install neovim
pip3 install pynvim

echo "Done!"

