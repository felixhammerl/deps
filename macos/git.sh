#!/usr/bin/env zsh

set -eu

echo "Installing scm breeze..."

rm -rf ~/.scm_breeze
git clone https://github.com/scmbreeze/scm_breeze.git ~/.scm_breeze

~/.scm_breeze/install.sh

echo "Creating projects folders..."

mkdir -p ~/Projects
mkdir -p ~/Projects/private
mkdir -p ~/Projects/thoughtworks
git init ~/Projects/private
git init ~/Projects/thoughtworks

echo "Installing git configs..."

cat >> ~/.gitconfig <<HERE
[user]
    name = Felix Hammerl
    email = fhammerl@thoughtworks.com
    signingkey = ~/.ssh/id_ed25519_sk_thoughtworks

[gpg]
    format = ssh

[gpg "ssh"]
    allowedSignersFile = ~/.ssh/allowed_signers

[commit]
    gpgsign = true

[color]
    ui = true
    branch = auto
    diff = auto
    interactive = auto
    status = auto

[core]
    editor = vim

[push]
    default = simple
      autoSetupRemote = true

[pull]
    rebase = true

[help]
    autocorrect = 0

[init]
    defaultBranch = main

[includeIf "gitdir:~/Projects/private/"]
    path = ~/Projects/private/.gitconfig.private

; [includeIf "gitdir:~/Projects/<client>/"]
;     path = ~/Projects/<client>/.gitconfig.<client>

HERE

cat >> ~/Projects/private/.gitconfig.private <<HERE
[user]
    name = Felix Hammerl
    email = felix.hammerl@gmail.com
    signingkey = ~/.ssh/id_ed25519_sk_private

[url "git@github-private:"]
    insteadOf = git@github.com:

[url "git@github-private:"]
    insteadOf = https://github.com/

HERE

echo "Done!"

