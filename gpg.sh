#!/usr/bin/env zsh

set -eu

echo "Configuring GPG..."

mkdir -p ~/.gnupg
cp $DIR/gpg.conf ~/.gnupg
cp $DIR/gpg-agent.conf ~/.gnupg
export GNUPGHOME=~/.gnupg

gpg --keyserver pgp.mit.edu --recv-keys 7859E6520888D02E

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

