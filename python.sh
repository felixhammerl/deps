#!/usr/bin/env bash

echo "Installing python dependencies..."

sudo python -m ensurepip
pip install --upgrade pip
pip install neovim
pip install virtualenv

echo "Done!"

