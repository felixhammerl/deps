#!/usr/bin/env zsh

echo "Installing python dependencies..."

pip3 install --upgrade pip
pip3 install virtualenv

pyenv install 3.8.0
pyenv install 3.10.0

mkdir -p ~/.virtualenv
cd ~/.virtualenv
python3 -m venv ./neovim
source neovim/bin/activate
pip install --upgrade pynvim

echo "Done!"

