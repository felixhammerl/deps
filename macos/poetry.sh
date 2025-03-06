#!/usr/bin/env zsh

echo "Installing poetry..."

curl -sSL https://install.python-poetry.org | python3 -

poetry self add poetry-plugin-export
poetry self add poetry-plugin-shell
poetry self add poetry-plugin-up
poetry self add 'poethepoet[poetry_plugin]'
poetry self update
