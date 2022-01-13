#!/usr/bin/env zsh

set -eu

echo "Preparing macOS..."

/usr/bin/xcode-select -p > /dev/null 2>&1
if [ $# != 0 ]; then
  xcode-select --install
fi

sudo softwareupdate --install-rosetta

FILEVAULT_STATUS=$(fdesetup status)
if [[ $FILEVAULT_STATUS != "FileVault is On." ]]; then
  echo "FileVault is not turned on. Please encrypt your hard disk!"
fi

echo "Creating projects folder"
mkdir -p ~/projects

echo "Done!"
