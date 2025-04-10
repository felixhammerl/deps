#!/usr/bin/env zsh

echo "Configuring ssh ..."

mkdir -p ~/.ssh
touch ~/.ssh/authorized_keys

cd ~/.ssh

cat >> ~/.zshrc <<HERE

#
# SSH settings
# 

eval \$(ssh-agent)
HERE


cat >> ~/.ssh/config <<HERE
Host *
    IdentityFile ~/.ssh/id_ed25519_sk_rk_thoughtworks
    IdentitiesOnly yes
    IdentityAgent none

Host github-private
    HostName github.com
    IdentityFile ~/.ssh/id_ed25519_sk_rk_private
    IdentitiesOnly yes
    IdentityAgent none

# Host github-<client>
#     HostName github.com
#     IdentityFile ~/.ssh/id_ed25519_sk_rk_<client>
#     IdentitiesOnly yes
#     IdentityAgent none

HERE

while true
do
  read -r "should_continue?Do you want to set up a machine-bound SSH from scratch? [y/n] " 
  if [[ "$should_continue" =~ ^[Yy]$ ]]
  then
    read -r "key_comment?Please specify the name you would like to use in the SSH key comment... [Default: default] " 
    key_comment=${key_comment:="default"}

    read -r "key_name?Please specify the file name you would like to use... [Default: id_ed25519] " 
    key_name=${key_name:="id_ed25519"}

    ssh-keygen -t ed25519 -C "$key_comment" -f ~/.ssh/"$key_name"
  else
    break
  fi
done

while true
do
  read -r "should_continue?Do you want to set up a FIDO2 key for SSH from scratch? [y/n] " 
  if [[ "$should_continue" =~ ^[Yy]$ ]]
  then
    read -r "key_comment?Please specify the name you would like to use in the SSH key comment... [Default: default] " 
    key_comment=${key_comment:="default"}

    read -r "fido2_scope?Please specify the FIDO2 scope you would like to use on the Yubikey... [Default: ssh:] " 
    fido2_scope=${fido2_scope:="ssh:"}

    read -r "key_name?Please specify the file name you would like to use... [Default: id_ed25519_sk_rk] " 
    key_name=${key_name:="id_ed25519_sk_rk"}

    ssh-keygen -t ed25519-sk -O resident -O application="$fido2_scope" -C "$key_comment" -f ~/.ssh/"$key_name"
  else
    break
  fi
done

read -r "should_continue?Do you want to import your resident FIDO2 keys from the Yubikey? [y/n]" 
if [[ "$should_continue" =~ ^[Yy]$ ]]
then
  ssh-keygen -K
fi

for key_name in $(find . -maxdepth 1 -name 'id_*' ! -name '*.pub' | sed 's|^\./||'); do
  cat "$key_name.pub" >> ~/.ssh/allowed_signers
  echo "ssh-add \"\$HOME/.ssh/$key_name\"" >> ~/.zshrc
done

echo "" >> ~/.zshrc

echo "Done!"

