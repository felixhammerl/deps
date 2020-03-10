export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8
export HISTCONTROL=erasedups
export HISTSIZE=10000
export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced
export EDITOR=vim
export HOMEBREW_CASK_OPTS="--appdir=/Applications"
export JAVA_HOME=$(/usr/libexec/java_home)

export PATH=~/.cargo/bin:/usr/local/bin:${PATH}

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
[ -f /Users/eufhammerl/.travis/travis.sh ] && source /Users/eufhammerl/.travis/travis.sh
eval "$(rbenv init -)"
eval "$(direnv hook zsh)"
