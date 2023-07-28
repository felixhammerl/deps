#!/usr/bin/env zsh

set -eu

# echo "Cleaning up pre-flight"
# rm -rf ~/.config/nvim
# rm -rf ~/.nvim
# rm -rf ~/.config/coc

# echo "Creating dirs"
# mkdir -p ~/.config/nvim
# mkdir -p ~/.nvim/undo
# mkdir -p ~/.nvim/swp
# mkdir -p ~/.nvim/backup
# mkdir -p ~/.config/coc/ultisnips/

# echo "Setting up neovim..."
# cp init.vim ~/.config/nvim/init.vim
# cp coc-settings.json ~/.config/nvim/coc-settings.json
# cp python.snippets ~/.config/coc/ultisnips/python.snippets

# echo "Replacing vim with neovim"
# sudo ln -sf /opt/homebrew/bin/nvim /usr/local/bin/vi
# sudo ln -sf /opt/homebrew/bin/nvim /usr/local/bin/vim

echo "Creating pynvim venv"
mkdir -p ~/.virtualenv
cd ~/.virtualenv
python3 -m venv ./neovim
source neovim/bin/activate
pip install --upgrade pynvim
deactivate

echo "Install vim plug"
curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

echo "done!"
