export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8
export SAVEHIST=10000
export HISTFILE=~/.zsh_history
export HISTCONTROL=erasedups
export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced
export HOMEBREW_CASK_OPTS="--appdir=/Applications"

export PATH=~/.cargo/bin:/usr/local/bin:${PATH}

function auto_active_env() {
  ## Default path to virtualenv in your projects
  DEFAULT_ENV_PATH="./.venv"

  ## If env folder is found then activate the vitualenv
  function activate_venv() {
    if [[ -f "${DEFAULT_ENV_PATH}/bin/activate" ]] ; then 
      source "${DEFAULT_ENV_PATH}/bin/activate"
      echo "Activating ${VIRTUAL_ENV}"
    fi
  }

  if [[ -z "$VIRTUAL_ENV" ]] ; then
    activate_venv
  else
    ## check the current folder belong to earlier VIRTUAL_ENV folder
    # if yes then do nothing
    # else deactivate then run a new env folder check
      parentdir="$(dirname ${VIRTUAL_ENV})"
      if [[ "$PWD"/ != "$parentdir"/* ]] ; then
        echo "Deactivating ${VIRTUAL_ENV}"
        deactivate
        activate_venv
      fi
  fi
}
chpwd_functions=(${chpwd_functions[@]} "auto_active_env")

export PYTHONBREAKPOINT="pudb.set_trace"
export PIPENV_VENV_IN_PROJECT=true
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init --path)"

zsh_prompt_parse_git_branch() {
  git branch 2> /dev/null | sed -e $'s/\x1b\\[[0-9;]*[a-zA-Z]//g' -e '/^[^*]/d' -e 's/* \[.*\] \(.*\)/(\1)/g'
}

setopt PROMPT_SUBST
PROMPT='%{$fg[yellow]%}[%D{%f/%m/%y} %D{%H:%M:%S}] %~ %{%F{green}%}$(zsh_prompt_parse_git_branch)%{%F{none}%}
> '

alias ls='ls -lGFh'

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

autoload -Uz compinit && compinit

[ -s "/Users/fhammerl/.scm_breeze/scm_breeze.sh" ] && source "/Users/fhammerl/.scm_breeze/scm_breeze.sh"

eval "$(rbenv init -)"
eval "$(direnv hook zsh)"

eval $(ssh-agent)
ssh-add "$HOME/.ssh/id_rsa"

nuke_python_caches() {
  find . -name "*.pyc" | xargs rm
  rm -rf .pytest_cache
  find . -name "__pycache__" | xargs rm -rf
}

