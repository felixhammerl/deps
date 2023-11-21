#!/bin/env bash

#
# Lock screen when Yubikey is removed
#

cat >> 99-screenlock.rules <<HERE
ACTION=="remove", ENV{ID_VENDOR_ID}=="1050", RUN+="/usr/bin/loginctl lock-sessions"
HERE

sudo mv 99-screenlock.rules /etc/udev/rules.d/99-screenlock.rules
