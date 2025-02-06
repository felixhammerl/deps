#!/usr/bin/env zsh

echo "Installing python dependencies..."

pyenv install 3.8.14
pyenv install 3.10.7

pyenv global 3.8.14

eval "$(pyenv init --path)"
pip install --upgrade pip pipenv virtualenv

cat >> ~/.zshrc <<HERE

#
# Python settings
# 

export PYTHONBREAKPOINT="pudb.set_trace"
export PYENV_ROOT="\$HOME/.pyenv"
export PATH="\$PYENV_ROOT/bin:\$PATH"
export PATH="\$HOME/.local/bin:\$PATH"
eval "\$(pyenv init --path)"

HERE

echo "Done!"

