#!/usr/bin/env bash

set -eu

cp .gitconfig ~/.gitconfig

git clone git://github.com/scmbreeze/scm_breeze.git ~/.scm_breeze
~/.scm_breeze/install.sh

