#!/usr/bin/env zsh

# echo "Uninstalling old version ..."
 
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/uninstall.sh)"

# echo "Installing brew..."

/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

cat >> ~/.zshrc <<HERE

#
# Homebrew settings
# 


export HOMEBREW_CASK_OPTS="--appdir=/Applications"
eval "\$(/opt/homebrew/bin/brew shellenv)"

HERE


eval "$(/opt/homebrew/bin/brew shellenv)"

echo "Tapping..."

brew tap homebrew/cask
brew tap homebrew/cask-drivers
brew tap homebrew/cask-fonts

echo "Installing applications..."

brew install 1password
brew install 1password-cli
brew install android-file-transfer
brew install ballast
brew install burp-suite
brew install dropbox
brew install firefox
brew install gimp
brew install google-chat
brew install google-chrome
brew install inkscape
brew install iterm2
brew install karabiner-elements
brew install ledger-live
brew install postman
brew install signal
brew install spotify
brew install sublime-text
brew install visual-studio-code
brew install vlc
brew install yubico-authenticator
brew install yubico-yubikey-manager
brew install zoom

echo "Installing dependencies..."

brew install ack
brew install awscli
brew install bash
brew install docker
brew install docker-compose
brew install lima
brew install colima
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
brew install mitmproxy
brew install n
brew install neovim
brew install nmap
brew install perl
brew install pinentry-mac
brew install pv
brew install pyenv
brew install ruby
brew install rbenv
brew install shellcheck
brew install svn
brew install terraform
brew install tmate
brew install tmux
brew install watch
brew install wget
brew install ykman
brew install yubico-piv-tool
brew install zlib
brew install zsh-completions

echo "Post-install hooks..."

$(brew --prefix)/opt/fzf/install

echo "Installing fonts ..."

brew install font-fira-code
brew install font-fira-mono
brew install font-fira-sans
brew install font-open-sans
brew install font-open-sans-condensed
brew install font-roboto
brew install font-roboto-mono
brew install font-roboto-slab
brew install font-source-code-pro

echo "Done!"
