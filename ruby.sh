#!/usr/bin/env bash

echo "Installinging ruby gems..."

curl -sSL https://rvm.io/mpapis.asc | gpg --import -
curl -sSL https://rvm.io/pkuczynski.asc | gpg --import -
curl -sSL https://get.rvm.io | bash -s stable --ruby

gem install jekyll
gem install kramdown
gem install rouge
gem install sass

echo "Done!"

