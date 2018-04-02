#!/usr/bin/env bash

set -eu

echo "Installinging ruby gems..."

gem install jekyll
gem install kramdown
gem install rouge
gem install sass

echo "Done!"

