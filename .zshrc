export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8
export SAVEHIST=10000
export HISTFILE=~/.zsh_history
export HISTCONTROL=erasedups
export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced
export HOMEBREW_CASK_OPTS="--appdir=/Applications"
# export JAVA_HOME=$(/usr/libexec/java_home)
# export MAVEN_OPTS="$MAVEN_OPTS -Xms1024m -Xmx2048m -XX:PermSize=512m -XX:MaxPermSize=1024m"

export PATH=~/.cargo/bin:/usr/local/bin:${PATH}

function cd() {
  builtin cd "$@"

  if [[ -z "$VIRTUAL_ENV" ]] ; then
    ## If env folder is found then activate the vitualenv
    if [[ -d ./.venv ]] ; then
      source ./.venv/bin/activate
    fi
  else
    ## check the current folder belong to earlier VIRTUAL_ENV folder
    # if yes then do nothing
    # else deactivate
    parentdir="$(dirname "$VIRTUAL_ENV")"
    if [[ "$PWD"/ != "$parentdir"/* ]] ; then
      deactivate
    fi
  fi
}

export PYTHONBREAKPOINT="pudb.set_trace"
export PIPENV_VENV_IN_PROJECT=true
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init --path)"

zsh_prompt_parse_git_branch() {
  git branch 2> /dev/null | sed -e $'s/\x1b\\[[0-9;]*[a-zA-Z]//g' -e '/^[^*]/d' -e 's/* \[.*\] \(.*\)/(\1)/g'
}

setopt PROMPT_SUBST
PROMPT='%~ %{%F{green}%}$(zsh_prompt_parse_git_branch)%{%F{none}%}
> '

alias ls='ls -lGFh'

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

autoload -Uz compinit && compinit

[ -s "/Users/eufhammerl/.scm_breeze/scm_breeze.sh" ] && source "/Users/eufhammerl/.scm_breeze/scm_breeze.sh"

eval "$(rbenv init -)"
eval "$(direnv hook zsh)"

eval $(ssh-agent)
ssh-add "$HOME/.ssh/id_rsa"

nuke_python_caches() {
  find . -name "*.pyc" | xargs rm
  rm -rf .pytest_cache
  find . -name "__pycache__" | xargs rm -rf
}

