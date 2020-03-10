#!/usr/bin/env zsh

set -eu

echo "Installing vscode ..."

rm -f /usr/local/bin/code
ln -s /Applications/Visual\ Studio\ Code.app/Contents/Resources/app/bin/code /usr/local/bin/code


code --install-extension arc0re.theme-xcode-midnight
code --install-extension bibhasdn.unique-lines
code --install-extension bungcip.better-toml
code --install-extension chenxsan.vscode-standardjs
code --install-extension EditorConfig.EditorConfig
code --install-extension eg2.vscode-npm-script
code --install-extension Equinusocio.vsc-material-theme
code --install-extension joshpeng.sublime-babel-vscode
code --install-extension karigari.chat
code --install-extension matthewferreira.uuid-gen
code --install-extension ms-azuretools.vscode-docker
code --install-extension ms-vsliveshare.vsliveshare
code --install-extension ms-vsliveshare.vsliveshare-audio
code --install-extension ms-vsliveshare.vsliveshare-pack
code --install-extension redhat.vscode-yaml
code --install-extension timonwong.shellcheck
code --install-extension Tyriar.lorem-ipsum
code --install-extension VisualStudioExptTeam.vscodeintellicode
code --install-extension vscodevim.vim

cp vscode-settings.json $HOME/Library/Application\ Support/Code/User/settings.json

echo "Done!"
