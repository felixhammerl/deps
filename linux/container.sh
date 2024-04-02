#!/usr/bin/env zsh

set -eu

echo "Configuring docker for use without sudo..."

sudo groupadd docker
sudo usermod -aG docker $USER

echo "Enabling docker in systemd"

sudo systemctl daemon-reload
sudo systemctl enable --now containerd
sudo systemctl enable --now docker

sudo systemctl status containerd
sudo systemctl status docker

echo "Installing nerdctl..."

echo "Go to https://github.com/containerd/nerdctl/releases and get the latest version"

read -r "version?Latest stable Nerdctl version: "
filename="nerdctl-$version-linux-amd64.tar.gz"
wget "https://github.com/containerd/nerdctl/releases/download/v$version/$filename"
tar Cxzvvf $HOME/bin "$filename"

sudo chown root $HOME/bin/nerdctl
sudo chmod +s $HOME/bin/nerdctl

cat >> ~/.zshrc <<HERE

#
# Container settings
# 

export PATH=\$HOME/bin:\$PATH

HERE

echo "Done!"

