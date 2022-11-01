#!/usr/bin/env zsh

echo "Installing python dependencies..."

pyenv install 3.8.0
pyenv install 3.10.0

pyenv global 3.8.0
pip install --upgrade pip pipenv virtualenv

echo "Done!"

