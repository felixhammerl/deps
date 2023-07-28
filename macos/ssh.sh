#!/usr/bin/env zsh

echo "Configuring ssh ..."

mkdir -p ~/.ssh
mv ssh-config ~/.ssh/config
touch ~/.ssh/authorized_keys

cd ~/.ssh

cat >> ~/.zshrc <<HERE

#
# SSH settings
# 

eval \$(ssh-agent)

HERE

while true
do

read -r "should_continue?Do you want to set up a FIDO2 key for SSH from scratch? [y/n]" 
if [[ "$should_continue" =~ ^[Yy]$ ]]
then
  read -r "key_name?Please specify the name you would like to use? [Default: id_ecdsa_sk]" 
  key_name=${key_name:=id_ecdsa_sk}

  ssh-keygen -t ecdsa-sk -O resident -f "$key_name"

  echo "ssh-add \"\$HOME/.ssh/$key_name\"" >> ~/.zshrc
  echo "    IdentityFile ~/.ssh/$key_name" >> ~/.ssh/config
else
  break
fi


done

while true
do

read -r "should_continue?Do you want to import a FIDO2 key for SSH from scratch? [y/n]" 
if [[ "$should_continue" =~ ^[Yy]$ ]]
then
  read -r "key_name?Please specify the name you would like to use? [Default: id_ecdsa_sk]" 
  key_name=${key_name:=id_ecdsa_sk}

  ssh-keygen -K
  mv id_ecdsa_sk_rk "~/.ssh/$key_name"

  echo "ssh-add \"\$HOME/.ssh/$key_name\"" >> ~/.zshrc
  echo "    IdentityFile ~/.ssh/$key_name" >> ~/.ssh/config
else
  break
fi

done

echo "" >> ~/.zshrc
echo "" >> ~/.ssh/config

echo "Done!"

