#!/usr/bin/env bash

set -eu

echo "Preparing macOS..."

/usr/bin/xcode-select -p > /dev/null 2>&1
if [ $# != 0 ]; then
  xcode-select --install
fi

ROOTLESS_STATUS=`/usr/bin/csrutil status | awk '/status/ {print $5}' | sed 's/\.$//'`
if [[ $ROOTLESS_STATUS == "enabled" ]]; then
  echo "csrutil (\"rootless\") is enabled. please disable in boot screen and run again!"
  exit 1
fi

FILEVAULT_STATUS=`fdesetup status`
if [[ $FILEVAULT_STATUS != "FileVault is On." ]]; then
  echo "FileVault is not turned on. Please encrypt your hard disk!"
fi

echo "Configuring non-crashing safe sleep/hibernate settings"
echo "Restoring defaults before applying new config"
sudo pmset restoredefaults
echo "Throwing away key when going into hibernation (standby)"
sudo pmset -a destroyfvkeyonstandby 1
echo "Standard safe sleep to memory first, then hibernate"
sudo pmset -a hibernatemode 3
echo "Sleep after 20 min"
sudo pmset -a sleep 20
echo "Use standby after 30 minutes"
sudo pmset -a standby 1
sudo pmset -a standbydelay 1800
echo "Don't do deep sleep"
sudo pmset -a autopoweroff 0
echo "Don't do powernaps"
sudo pmset -a powernap 0
echo "Don't wake up on WIFI/network connections"
sudo pmset -a tcpkeepalive 0
echo "Don't wake on magic Ethernet packets"
sudo pmset -a womp 0
echo "Ignore any ttys/ssh connected"
sudo pmset -a ttyskeepawake 0
echo "Do not wake up on AC connected"
sudo pmset -a acwake 0
echo "Disable Powernap"
sudo pmset -a darkwakes 0

echo "Done!"
