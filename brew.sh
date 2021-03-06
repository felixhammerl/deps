#!/usr/bin/env zsh

echo "Uninstalling old version ..."

/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/uninstall)"

echo "Installing brew..."

/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

echo "Installing brew casks..."

brew tap caskroom/cask
brew cask install --appdir=/Applications 1password
brew cask install --appdir=/Applications 1password-cli
brew cask install --appdir=/Applications android-file-transfer
brew cask install --appdir=/Applications bitbar
brew cask install --appdir=/Applications brave-browser
brew cask install --appdir=/Applications burp-suite
brew cask install --appdir=/Applications docker
brew cask install --appdir=/Applications dropbox
brew cask install --appdir=/Applications firefox
brew cask install --appdir=/Applications gimp
brew cask install --appdir=/Applications google-chat
brew cask install --appdir=/Applications google-chrome
brew cask install --appdir=/Applications inkscape
brew cask install --appdir=/Applications iterm2
brew cask install --appdir=/Applications karabiner-elements
brew cask install --appdir=/Applications ledger-live
brew cask install --appdir=/Applications logitech-control-center
brew cask install --appdir=/Applications owasp-zap
brew cask install --appdir=/Applications postman
brew cask install --appdir=/Applications signal
brew cask install --appdir=/Applications spotify
brew cask install --appdir=/Applications sublime-text
brew cask install --appdir=/Applications tunnelblick
brew cask install --appdir=/Applications virtualbox
brew cask install --appdir=/Applications visual-studio-code
brew cask install --appdir=/Applications vlc
brew cask install --appdir=/Applications yubico-authenticator
brew cask install --appdir=/Applications yubico-yubikey-manager
brew cask install --appdir=/Applications zoomus

echo "Installing drivers..."

brew tap caskroom/drivers
brew cask install logitech-control-center

echo "Installing dependencies..."

brew install ack
brew install remind101/formulae/assume-role
brew install awscli
brew install bash
brew install coreutils
brew install curl
brew install direnv
brew install ecm
brew install editorconfig
brew install fzf
brew install git
brew install gnu-sed
brew install gnupg
brew install gradle
brew install grep
brew install jq
brew install kubernetes-cli
brew install n
brew install neovim
brew install nmap
brew install perl
brew install pinentry-mac
brew install pv
brew install python@2
brew install python@3
brew install pipenv
brew install pyenv
brew install ruby
brew install rbenv
brew install versent/taps/saml2aws
brew install terraform
brew install thefuck
brew install tmate
brew install tmux
brew install watch
brew install wget
brew install ykman
brew install yubico-piv-tool
brew install zlib
brew install zsh-completions

echo "Post-install stuff for fzf"

$(brew --prefix)/opt/fzf/install

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
