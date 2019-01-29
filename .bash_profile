export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8
export HISTCONTROL=erasedups
export HISTSIZE=10000
shopt -s histappend
export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced
export EDITOR=vim
export HOMEBREW_CASK_OPTS="--appdir=/Applications"
export JAVA_HOME=$(/usr/libexec/java_home -v 10)
export MAVEN_OPTS="$MAVEN_OPTS -Xms1024m -Xmx2048m -XX:PermSize=512m -XX:MaxPermSize=1024m"

export PATH=~/.cargo/bin:/usr/local/bin:${PATH}

alias ls='ls -lGFh'

[ -f ~/.fzf.bash ] && source ~/.fzf.bash
[ -f $(brew --prefix)/etc/bash_completion ] && . $(brew --prefix)/etc/bash_completion
eval $(thefuck --alias)

PS1="\e[33m\w \e[36m\$(__git_ps1 '(%s)') \e[m\n> "

