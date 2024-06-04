#!/usr/bin/env zsh

set -eu

echo "Preparing macOS..."

xcode-select --install
softwareupdate --install-rosetta

echo "\n\n" 

read -q "BLA?Press enter to continue when Xcode is done installing..."

FILEVAULT_STATUS=$(fdesetup status)
if [[ $FILEVAULT_STATUS != "FileVault is On." ]]; then
  echo "##############################################################"
  echo "# FileVault is not turned on. Please encrypt your hard disk! #"
  echo "##############################################################"
fi

echo "Creating projects folder"
mkdir -p ~/Projects

echo "Done!"
