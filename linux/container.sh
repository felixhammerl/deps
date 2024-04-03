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

download_url="https://github.com/containerd/nerdctl/releases"
echo "Go to $download_url and get the latest version"

read -r "version?Latest stable version: "
filename="nerdctl-$version-linux-amd64.tar.gz"
wget "$download_url/download/v$version/$filename"
tar Cxzvvf $HOME/bin "$filename"

rm $filename

sudo chown root $HOME/bin/nerdctl
sudo chmod +s $HOME/bin/nerdctl

echo "Installing CNI plugins ..."

sudo mkdir -p /opt/cni/bin/

download_url="https://github.com/containernetworking/plugins/releases"
echo "Go to $download_url and get the latest version"

read -r "version?Latest stable Nerdctl version: "
filename="cni-plugins-linux-amd64-v$version.tgz"
wget "$download_url/download/v$version/$filename"

sudo tar Cxzvf /opt/cni/bin "$filename"

rm $filename

cat >> ~/.zshrc <<HERE

#
# Container settings
# 

export PATH=\$HOME/bin:/opt/cni/bin:\$PATH

HERE

echo "Done!"

