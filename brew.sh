#!/usr/bin/env bash

echo "Uninstalling old version ..."

/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/uninstall)"

echo "Installing brew..."

/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

echo "Installing brew dependencies..."

brew install \
  ack \
  bash \
  bash-completion \
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
  neovim \
  openssl \
  sbt \
  scala \
  terminal-notifier \
  thefuck \
  tmate \
  tmux \
  vim \
  wget

echo "Installinging ruby gems..."

gem install \
  sass \
  jekyll \
  kramdown \
  rouge

echo "Installing python dependencies..."

pip install --upgrade pip
pip install \
  virtualenv \
  neovim

echo "Installing brew caskroom"

brew tap caskroom/cask

echo "Installing brew casks..."

brew cask install --appdir=/Applications \
  android-file-transfer \
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

echo "Installing fonts caskroom"

brew tap caskroom/fonts

echo "Installing fonts ..."

brew cask install \
  font-fira-code \
  font-fira-mono \
  font-fira-sans \
  font-source-code-pro \
  font-open-sans \
  font-open-sans-condensed \
  font-roboto \
  font-roboto-mono \
  font-roboto-condensed \
  font-roboto-slab


echo "Installing rust..."

curl https://sh.rustup.rs -sSf | sh

echo "Done!"
