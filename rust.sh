#!/usr/bin/env zsh

echo "Installing rust..."

curl https://sh.rustup.rs -sSf | sh

source "$HOME/.cargo/env"

rustup update
rustup component add rls-preview rust-analysis rust-src
rustup show


cat >> ~/.zshrc <<HERE

#
# Rust settings
# 

source "\$HOME/.cargo/env"

HERE

echo "Done!"
