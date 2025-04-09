#!/usr/bin/env zsh

echo "Installing python dependencies..."

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

eval "$(pyenv init --path)"

pyenv install 3.10
pyenv install 3.11
pyenv install 3.12
pyenv install 3.13

pyenv global 3.12

pip install --upgrade pip pipenv virtualenv

echo "Installing poetry..."

curl -sSL https://install.python-poetry.org | python3 -

poetry self add poetry-plugin-export
poetry self add poetry-plugin-shell
poetry self add poetry-plugin-up
poetry self update

echo "Done!"

