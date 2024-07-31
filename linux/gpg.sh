#!/usr/bin/env zsh

set -eu

echo "Installing dependencies ..."

sudo apt install scdaemon gpgme-json

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

sudo mkdir -p /usr/lib/mozilla/native-messaging-hosts/
sudo mkdir -p /etc/chromium/native-messaging-hosts/
sudo mkdir -p /etc/opt/chrome/native-messaging-hosts/
mkdir -p ~/.config/google-chrome/NativeMessagingHosts/
mkdir -p ~/.config/chromium/NativeMessagingHosts/
sudo cp ff-gpgmejson.json /usr/lib/mozilla/native-messaging-hosts/gpgmejson.json
sudo cp chrome-gpgmejson.json /etc/chromium/native-messaging-hosts/gpgmejson.json
sudo cp chrome-gpgmejson.json /etc/opt/chrome/native-messaging-hosts/gpgmejson.json
cp chrome-gpgmejson.json ~/.config/google-chrome/NativeMessagingHosts/gpgmejson.json
cp chrome-gpgmejson.json ~/.config/chromium/NativeMessagingHosts/gpgmejson.json
