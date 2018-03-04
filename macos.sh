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

echo "Done!"
