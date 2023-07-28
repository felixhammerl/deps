#!/usr/bin/env zsh

set -eu

echo "Installing vscode ..."

# rm -f /usr/local/bin/code
# ln -s /Applications/Visual\ Studio\ Code.app/Contents/Resources/app/bin/code /usr/local/bin/code

# code --install-extension arc0re.theme-xcode-midnight
# code --install-extension bibhasdn.unique-lines
# code --install-extension bungcip.better-toml
# code --install-extension EditorConfig.EditorConfig
# code --install-extension Equinusocio.vsc-community-material-theme
# code --install-extension Equinusocio.vsc-material-theme
# code --install-extension equinusocio.vsc-material-theme-icons
# code --install-extension hashicorp.terraform
# code --install-extension johnpapa.vscode-peacock
# # code --install-extension joshpeng.sublime-babel-vscode
# code --install-extension karigari.chat
# code --install-extension matklad.rust-analyzer
# code --install-extension ms-azuretools.vscode-docker
# code --install-extension ms-python.python
# code --install-extension ms-python.vscode-pylance
# code --install-extension ms-toolsai.jupyter
# code --install-extension ms-vscode-remote.remote-containers
# code --install-extension ms-vsliveshare.vsliveshare
# code --install-extension ms-vsliveshare.vsliveshare-audio
# code --install-extension ms-vsliveshare.vsliveshare-pack
# code --install-extension njpwerner.autodocstring
# code --install-extension redhat.vscode-yaml
# code --install-extension rust-lang.rust
# code --install-extension shd101wyy.markdown-preview-enhanced
# code --install-extension ThreadHeap.serverless-ide-vscode
# code --install-extension timonwong.shellcheck
# code --install-extension Tyriar.lorem-ipsum
# code --install-extension vadimcn.vscode-lldb
# code --install-extension VisualStudioExptTeam.vscodeintellicode
# code --install-extension vscodevim.vim

cp vscode-settings.json $HOME/.config/Code/User/settings.json

mkdir -p $HOME/.config/Code/User/snippets
cp vscode-python-snippets.json $HOME/.config/Code/User/snippets/python.json

echo "Done!"
