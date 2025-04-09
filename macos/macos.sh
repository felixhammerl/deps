#!/usr/bin/env zsh

set -eu

echo "Preparing macOS..."

if xcode-select -p &>/dev/null; then
    echo "Xcode Command Line Tools already installed"
else
    echo "Installing Xcode Command Line Tools..."
    xcode-select --install
    while ! xcode-select -p &>/dev/null; do
        echo "Waiting for Xcode Command Line Tools finish installing..."
        sleep 5
    done
fi


echo "Do not write .DS_Store files on network volumes"
defaults write com.apple.desktopservices DSDontWriteNetworkStores true

echo "Done!"
