#!/usr/bin/env zsh

set -eu

echo "Cleaning up pre-flight"
rm -rfv ~/.config/nvim

echo "Creating pynvim venv"
mkdir -p ~/.virtualenv
cd ~/.virtualenv
python -m venv ./neovim
source neovim/bin/activate
pip install --upgrade pynvim
deactivate

echo "Creating dirs"
mkdir -p ~/.config/nvim
mkdir -p ~/.nvim/undo
mkdir -p ~/.nvim/swp
mkdir -p ~/.nvim/backup
mkdir -p ~/.config/coc/ultisnips/

echo "Setting up neovim..."
cp init.vim ~/.config/nvim/init.vim
cp coc-settings.json ~/.config/nvim/coc-settings.json
cp python.snippets ~/.config/coc/ultisnips/python.snippets

echo "Replacing vim with neovim"
ln -s /opt/homebrew/bin/nvim /usr/local/bin/vi
ln -s /opt/homebrew/bin/nvim /usr/local/bin/vim

echo "done!"
