#!/usr/bin/env zsh

set -eu

echo "Installing vscode ..."

wget -qO- https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > packages.microsoft.gpg
sudo install -D -o root -g root -m 644 packages.microsoft.gpg /etc/apt/keyrings/packages.microsoft.gpg
sudo sh -c 'echo "deb [arch=amd64,arm64,armhf signed-by=/etc/apt/keyrings/packages.microsoft.gpg] https://packages.microsoft.com/repos/code stable main" > /etc/apt/sources.list.d/vscode.list'
rm -f packages.microsoft.gpg

sudo apt install apt-transport-https
sudo apt update
sudo apt install code

code --install-extension arc0re.theme-xcode-midnight
code --install-extension bibhasdn.unique-lines
code --install-extension EditorConfig.EditorConfig
code --install-extension Equinusocio.vsc-community-material-theme
code --install-extension Equinusocio.vsc-material-theme
code --install-extension equinusocio.vsc-material-theme-icons
code --install-extension hashicorp.terraform
code --install-extension johnpapa.vscode-peacock
code --install-extension ms-azuretools.vscode-docker
code --install-extension ms-python.python
code --install-extension ms-python.vscode-pylance
code --install-extension ms-vsliveshare.vsliveshare
code --install-extension redhat.vscode-yaml
code --install-extension rust-lang.rust-analyzer
code --install-extension tamasfe.even-better-toml
code --install-extension Tyriar.lorem-ipsum
code --install-extension VisualStudioExptTeam.intellicode-api-usage-examples
code --install-extension VisualStudioExptTeam.vscodeintellicode
code --install-extension timonwong.shellcheck

mkdir -p $HOME/.config/Code/User/snippets
cp vscode-settings.json $HOME/.config/Code/User/settings.json
cp vscode-python-snippets.json $HOME/.config/Code/User/snippets/python.json

echo "Done!"
