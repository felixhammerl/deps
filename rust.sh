#!/usr/bin/env bash

echo "Installing rust..."

curl https://sh.rustup.rs -sSf | sh

rustup install nightly
rustup default nightly
rustup update
rustup component add rls-preview rust-analysis rust-src
rustup show

echo "Done!"

