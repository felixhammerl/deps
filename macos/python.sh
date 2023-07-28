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

nuke_python_caches() {
  find . -name "*.pyc" | xargs rm
  rm -rf .pytest_cache
  find . -name "__pycache__" | xargs rm -rf
}

function auto_active_env() {
  ## Default path to virtualenv in your projects
  DEFAULT_ENV_PATH="./.venv"

  ## If env folder is found then activate the vitualenv
  function activate_venv() {
    if [[ -f "\${DEFAULT_ENV_PATH}/bin/activate" ]] ; then 
      source "\${DEFAULT_ENV_PATH}/bin/activate"
      echo "Activating \${VIRTUAL_ENV}"
    fi
  }

  if [[ -z "\$VIRTUAL_ENV" ]] ; then
    activate_venv
  else
    ## check the current folder belong to earlier VIRTUAL_ENV folder
    # if yes then do nothing
    # else deactivate then run a new env folder check
      parentdir="\$(dirname \${VIRTUAL_ENV})"
      if [[ "\$PWD"/ != "\$parentdir"/* ]] ; then
        echo "Deactivating \${VIRTUAL_ENV}"
        deactivate
        activate_venv
      fi
  fi
}
chpwd_functions=(${chpwd_functions[@]} "auto_active_env")

export PYTHONBREAKPOINT="pudb.set_trace"
export PIPENV_VENV_IN_PROJECT=true
export PYENV_ROOT="\$HOME/.pyenv"
export PATH="\$PYENV_ROOT/bin:\$PATH"
eval "\$(pyenv init --path)"

HERE

echo "Done!"

