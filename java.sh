#!/usr/bin/env zsh

echo "Configuring java ..."

sudo ln -sfn /opt/homebrew/opt/openjdk/libexec/openjdk.jdk \
     /Library/Java/JavaVirtualMachines/openjdk.jdk

echo "Done!"

