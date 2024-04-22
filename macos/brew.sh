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

echo "Installing applications..."

brew install 1password
brew install 1password-cli
brew install android-file-transfer
brew install ballast
brew install burp-suite
brew install dropbox
brew install firefox
brew install gimp
brew install google-chrome
brew install inkscape
brew install iterm2
brew install karabiner-elements
brew install ledger-live
brew install postman
brew install signal
brew install spotify
brew install sublime-text
brew install utm
brew install visual-studio-code
brew install vlc
brew install yubico-authenticator
brew install yubico-yubikey-manager
brew install zoom
brew install 1password
brew install 1password-cli
brew install ack
brew install android-file-transfer
brew install awscli
brew install ballast
brew install bash
brew install bruno
brew install burp-suite
brew install coreutils
brew install curl
brew install cyberduck
brew install direnv
brew install docker
brew install docker-compose
brew install dropbox
brew install ecm
brew install editorconfig
brew install firefox
brew install fzf
brew install gimp
brew install git
brew install gnu-sed
brew install gnupg
brew install google-chat
brew install google-chrome
brew install gopass
brew install gradle
brew install grep
brew install hiddenbar
brew install htop
brew install hydra
brew install inkscape
brew install iterm2
brew install jq
brew install karabiner-elements
brew install kubernetes-cli
brew install ledger-live
brew install libmagic
brew install lima
brew install mitmproxy
brew install n
brew install neovim
brew install nmap
brew install perl
brew install pinentry-mac
brew install pipenv
brew install postman
brew install pv
brew install pyenv
brew install rancher
brew install rbenv
brew install ruby
brew install shellcheck
brew install signal
brew install spotify
brew install sublime-text
brew install svn
brew install tcpdump
brew install terraform
brew install terraform-ls
brew install tmate
brew install tmux
brew install visual-studio-code
brew install vlc
brew install watch
brew install wget
brew install ykman
brew install yubico-authenticator
brew install yubico-piv-tool
brew install yubico-yubikey-manager
brew install zlib
brew install zoom
brew install zsh-completions
nrew install gopass

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
