!/usr/bin/env bash

echo "Uninstalling old version ..."

/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/uninstall)"

echo "Installing brew..."

/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

echo "Installing brew dependencies..."

brew install ack
brew install bash
brew install bash-completion
brew install chromedriver
brew install curl
brew install editorconfig
brew install ffmpeg
brew install figlet
brew install fzf
brew install git
brew install gnupg
brew install gnupg2
brew install grep
brew install htop
brew install id3lib
brew install kubernetes-cli
brew install neovim
brew install nmap
brew install node
brew install openssl
brew install python
brew install sbt
brew install scala
brew install terminal-notifier
brew install thefuck
brew install tmate
brew install tmux
brew install vim
brew install wget

echo "Installing node dependencies"

npm update -g
npm install -g n
npm install -g standard
npm install -g vtop

echo "Installinging ruby gems..."

gem install jekyll
gem install kramdown
gem install rouge
gem install sass

echo "Installing python dependencies..."

sudo python -m ensurepip
pip install --upgrade pip
pip install neovim
pip install virtualenv

echo "Installing brew caskroom"

brew tap caskroom/cask

echo "Installing brew casks..."

brew cask install --appdir=/Applications 1password
brew cask install --appdir=/Applications android-file-transfer
brew cask install --appdir=/Applications docker
brew cask install --appdir=/Applications dropbox
brew cask install --appdir=/Applications firefox
brew cask install --appdir=/Applications gimp
brew cask install --appdir=/Applications google-chrome
brew cask install --appdir=/Applications intellij-idea
brew cask install --appdir=/Applications iterm2
brew cask install --appdir=/Applications java
brew cask install --appdir=/Applications karabiner-elements
brew cask install --appdir=/Applications keycastr
brew cask install --appdir=/Applications postman
brew cask install --appdir=/Applications slack
brew cask install --appdir=/Applications spotify 
brew cask install --appdir=/Applications sublime-text
brew cask install --appdir=/Applications vagrant
brew cask install --appdir=/Applications virtualbox
brew cask install --appdir=/Applications visual-studio-code
brew cask install --appdir=/Applications vlc
brew cask install --appdir=/Applications zoomus

echo "Installing fonts caskroom"

brew tap caskroom/fonts

echo "Installing fonts ..."

brew cask install font-fira-code
brew cask install font-fira-mono
brew cask install font-fira-sans
brew cask install font-open-sans
brew cask install font-open-sans-condensed
brew cask install font-roboto
brew cask install font-roboto-condensed
brew cask install font-roboto-mono
brew cask install font-roboto-slab
brew cask install font-source-code-pro


echo "Done!"
