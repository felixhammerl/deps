#!/usr/bin/env zsh

#
# Lock screen when Yubikey is removed
#

echo "Setting up Yubikey screenlock ..."

cat >> 99-screenlock.rules <<HERE
ACTION=="remove", ENV{ID_VENDOR_ID}=="1050", RUN+="/usr/bin/loginctl lock-sessions"
HERE

sudo mv 99-screenlock.rules /etc/udev/rules.d/99-screenlock.rules

echo "Set up Yubikey login ..."

mkdir -p ~/.config/Yubico
pamu2fcfg > ~/.config/Yubico/u2f_keys

read -r "should_continue?Do you want to set up another Yubikey? [y/n]" 
if [[ "$should_continue" =~ ^[Yy]$ ]]
then
  pamu2fcfg -n >> ~/.config/Yubico/u2f_keys
fi

echo ""
echo "Open sudo vim /etc/pam.d/sudo"
echo "Add the line below before the @include common-auth line."
echo "auth       sufficient   pam_u2f.so cue"
echo ""

echo "Press Enter to continue"
read -n 1

echo ""
echo "Open sudo vim /etc/pam.d/su"
echo "Add the line below before the @include common-auth line."
echo "auth       sufficient   pam_u2f.so cue"
echo ""

echo "Press Enter to continue"
read -n 1

echo ""
echo "Open sudo vim /etc/pam.d/login"
echo "Add the line below before the @include common-auth line."
echo "auth       sufficient   pam_u2f.so"
echo ""

echo "Press Enter to continue"
read -n 1

echo ""
echo "Open sudo vim /etc/pam.d/gdm-password"
echo "Add the line below before the @include common-auth line."
echo "auth       sufficient   pam_u2f.so cue"
echo ""

echo "Press Enter to continue"
read -n 1


echo "Done!"

