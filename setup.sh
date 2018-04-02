#!/usr/bin/env bash

set -eu

echo "Welcome to the grand environment setup extravaganza."

DIR=$(cd "$(dirname "$0")"; pwd)
echo "working relative to $DIR"

$DIR/macos.sh
$DIR/bash.sh
$DIR/brew.sh
$DIR/node.sh
$DIR/rust.sh
$DIR/vim.sh 
$DIR/neovim.sh
$DIR/vscode.sh

echo -e "Please install the following software manually:\n\nCinch (AppStore)\nShush (App Store)\nTicToc (AppStore)"

