#!/usr/bin/env zsh

echo "Installing python..."

pyenv install 3.8.14
pyenv install 3.10.7

pyenv global system

cat >> ~/.zshrc <<HERE

#
# Python settings
# 

nuke_python_caches() {
  find . -name "*.pyc" | xargs rm
  rm -rf .pytest_cache
  find . -name "__pycache__" | xargs rm -rf
}


export PYTHONBREAKPOINT="pudb.set_trace"
export PIPENV_VENV_IN_PROJECT=true
export PYENV_ROOT="\$HOME/.pyenv"
export PATH="\$PYENV_ROOT/bin:\$PATH"
eval "\$(pyenv init --path)"

HERE

echo "Done!"

