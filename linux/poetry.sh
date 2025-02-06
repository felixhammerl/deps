#!/usr/bin/env zsh

echo "Installing poetry..."

curl -sSL https://install.python-poetry.org | python3 -

poetry self remove poetry-plugin-export
poetry self remove poetry-plugin-shell
poetry self remove poetry-plugin-up
poetry self add poetry-plugin-export
poetry self add poetry-plugin-shell
poetry self add poetry-plugin-up
