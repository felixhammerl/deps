#!/usr/bin/env zsh

set -eu

echo "Installing dependencies ..."

sudo apt install scdaemon

echo "Configuring GPG..."

mkdir -p ~/.gnupg
cp gpg.conf ~/.gnupg
cp gpg-agent.conf ~/.gnupg
export GNUPGHOME=~/.gnupg

gpg --keyserver keyserver.ubuntu.com --recv-keys 7859E6520888D02E

gpg-connect-agent "scd serialno" "learn --force" /bye

cat >> ~/.zshrc <<HERE

#
# GPG settings
# 

export GNUPGHOME=~/.gnupg
function reset_gpg() {
  gpg-connect-agent "scd serialno" "learn --force" /bye
}
function kill_gpg() {
  gpgconf --kill gpg-agent
}


HERE

