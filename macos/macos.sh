#!/usr/bin/env zsh

set -eu

echo "Preparing macOS..."

echo "Installing Xcode command line tools..."
xcode-select --install
echo "Press enter to continue when Xcode is done installing..."
read yn

echo "Do not write .DS_Store files on network volumes"
defaults write com.apple.desktopservices DSDontWriteNetworkStores true

echo "Creating projects folder"
mkdir -p ~/Projects

echo "Done!"
