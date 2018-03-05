#!/usr/bin/env bash

set -eu

echo "Uninstalling old version ..."

/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/uninstall)"

echo "Installing brew..."

/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

echo "Installing brew dependencies..."

brew install \
  ack \
  bash \
  bash-completion \
  bash-git-prompt \
  chromedriver \
  curl \
  editorconfig \
  ffmpeg \
  figlet \
  fzf \
  git \
  gnupg \
  gnupg2 \
  grep \
  htop \
  id3lib \
  kubernetes-cli \
  nmap \
  openssl \
  sbt \
  scala \
  terminal-notifier \
  thefuck \
  tmate \
  tmux \
  vim \
  wget

echo "Installing brew caskroom"

brew tap caskroom/cask

echo "Installing brew casks..."

brew cask install --appdir=~/Application \
  karabiner-elements \
  keycastr \
  vagrant \
  virtualbox \
  spotify \
  visual-studio-code \
  google-chrome \
  firefox \
  sublime-text \
  slack \
  intellij-idea \
  zoomus \
  gimp \
  1password \
  java \
  docker \
  dropbox \
  iterm2 \
  vlc \
  postman

echo "Installing rust..."

curl https://sh.rustup.rs -sSf | sh

echo "Done!"
