#!/usr/bin/env bash

set -eu

echo "Installing vscode extensions..."

while true; do
  if [ -x "$(command -v code)" ]; then
    break;
  else
    read -rep $"Waiting to install Visual Studio Code CLI command! Press any key to continue ..." -n1
  fi
done

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

echo "Done!"
