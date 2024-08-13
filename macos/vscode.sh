#!/usr/bin/env zsh

set -eu

echo "Installing vscode ..."

rm -f /usr/local/bin/code
ln -s /Applications/Visual\ Studio\ Code.app/Contents/Resources/app/bin/code /usr/local/bin/code

mkdir -p $HOME/.config/Code/User/snippets

cp vscode-settings.json $HOME/.config/Code/User/settings.json
cp vscode-python-snippets.json $HOME/.config/Code/User/snippets/python.json

code --install-extension 42crunch.vscode-openapi
code --install-extension 4ops.terraform
code --install-extension aaron-bond.better-comments
code --install-extension arc0re.theme-xcode-midnight
code --install-extension bibhasdn.unique-lines
code --install-extension eamodio.gitlens
code --install-extension editorconfig.editorconfig
code --install-extension equinusocio.vsc-material-theme
code --install-extension equinusocio.vsc-material-theme-icons
code --install-extension flyfly6.terminal-in-status-bar
code --install-extension github.copilot
code --install-extension github.copilot-chat
code --install-extension johnpapa.vscode-peacock
code --install-extension mechatroner.rainbow-csv
code --install-extension mikestead.dotenv
code --install-extension ms-azuretools.vscode-docker
code --install-extension ms-python.black-formatter
code --install-extension ms-python.debugpy
code --install-extension ms-python.isort
code --install-extension ms-python.python
code --install-extension ms-python.vscode-pylance
code --install-extension ms-vsliveshare.vsliveshare
code --install-extension ms-vsliveshare.vsliveshare-pack
code --install-extension njpwerner.autodocstring
code --install-extension redhat.java
code --install-extension redhat.vscode-yaml
code --install-extension rodolphebarbanneau.python-docstring-highlighter
code --install-extension rust-lang.rust-analyzer
code --install-extension sswg.swift-lang
code --install-extension timonwong.shellcheck
code --install-extension vadimcn.vscode-lldb
code --install-extension veracode.veracode-vscode-plugin
code --install-extension visualstudioexptteam.intellicode-api-usage-examples
code --install-extension visualstudioexptteam.vscodeintellicode
code --install-extension vscjava.vscode-gradle
code --install-extension vscjava.vscode-java-debug
code --install-extension vscjava.vscode-java-dependency
code --install-extension vscjava.vscode-java-pack
code --install-extension vscjava.vscode-java-test
code --install-extension vscjava.vscode-maven
code --install-extension vscodevim.vim
code --install-extension yzhang.markdown-all-in-one


echo "Done!"
