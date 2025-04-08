#!/usr/bin/env zsh

set -eu

echo "Installing vscode ..."

sudo rm -f /usr/local/bin/code
sudo ln -s /Applications/Visual\ Studio\ Code.app/Contents/Resources/app/bin/code /usr/local/bin/code

mkdir -p $HOME/.config/Code/User/snippets

code --install-extension 42crunch.vscode-openapi
code --install-extension aaron-bond.better-comments
code --install-extension arc0re.theme-xcode-midnight
code --install-extension asciidoctor.asciidoctor-vscode
code --install-extension augustocdias.tasks-shell-input
code --install-extension bibhasdn.unique-lines
code --install-extension eamodio.gitlens
code --install-extension editorconfig.editorconfig
code --install-extension esbenp.prettier-vscode
code --install-extension flyfly6.terminal-in-status-bar
code --install-extension github.copilot
code --install-extension github.copilot-chat
code --install-extension hashicorp.terraform
code --install-extension johnpapa.vscode-peacock
code --install-extension mechatroner.rainbow-csv
code --install-extension mikestead.dotenv
code --install-extension mongodb.mongodb-vscode
code --install-extension ms-azuretools.vscode-docker
code --install-extension ms-python.black-formatter
code --install-extension ms-python.debugpy
code --install-extension ms-python.isort
code --install-extension ms-python.python
code --install-extension ms-python.vscode-pylance
code --install-extension njpwerner.autodocstring
code --install-extension redhat.java
code --install-extension redhat.vscode-yaml
code --install-extension rodolphebarbanneau.python-docstring-highlighter
code --install-extension rust-lang.rust-analyzer
code --install-extension signageos.signageos-vscode-sops
code --install-extension sswg.swift-lang
code --install-extension swiftlang.swift-vscode
code --install-extension tamasfe.even-better-toml
code --install-extension timonwong.shellcheck
code --install-extension vadimcn.vscode-lldb
code --install-extension vscodevim.vim
code --install-extension vue.volar
code --install-extension yzhang.markdown-all-in-one

echo "Done!"
