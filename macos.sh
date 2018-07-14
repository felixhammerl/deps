#!/usr/bin/env bash

set -eu

echo "Preparing macOS..."

/usr/bin/xcode-select -p > /dev/null 2>&1
if [ $# != 0 ]; then
  xcode-select --install
fi

ROOTLESS_STATUS=`/usr/bin/csrutil status | awk '/status/ {print $5}' | sed 's/\.$//'`
if [ $ROOTLESS_STATUS == "enabled" ]; then
  echo "csrutil (\"rootless\") is enabled. please disable in boot screen and run again!"
  exit 1
fi

FILEVAULT_STATUS=`fdesetup status`
if [ $FILEVAULT_STATUS != "FileVault is On." ]; then
  echo "FileVault is not turned on. Please encrypt your hard disk!"
fi

echo "Setting the file vault key to be destroyed on hibernate"
sudo pmset -a destroyfvkeyonstandby 1

echo "Setting hibernate to 15 minutes after enterinf standby"
sudo pmset -a hibernatemode 3
sudo pmset -a standbydelay 900

echo "Done!"
