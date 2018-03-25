#!/usr/bin/env bash

set -eu

echo "Installing vscode ..."

if [[ ! -x "$(command -v code)" ]]; then
  echo "Installing vscode shell extension..."
  ln -s ~/Applications/Visual\ Studio\ Code.app/Contents/Resources/app/bin/code /usr/local/bin/code
fi

code --install-extension EditorConfig.EditorConfig
code --install-extension arc0re.theme-xcode-midnight
code --install-extension bungcip.better-toml
code --install-extension chenxsan.vscode-standardjs
code --install-extension daltonjorge.scala
code --install-extension donjayamanne.githistory
code --install-extension dragos.scala-lsp
code --install-extension ecmel.vscode-spring-boot
code --install-extension eg2.vscode-npm-script
code --install-extension itryapitsin.Scala
code --install-extension joshpeng.sublime-babel-vscode
code --install-extension kalitaalexey.vscode-rust
code --install-extension vscodevim.vim

cp vscode-settings.json $HOME/Library/Application\ Support/Code/User/settings.json

echo "Done!"
