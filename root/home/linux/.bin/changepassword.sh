#!/bin/sh
rm -rf $HOME/.gnupg/* 
rm -rf $HOME/.pki/*
rm -rf $HOME/.local/share/keyrings/*
cp -f $HOME/.bin/originals/default $HOME/.local/share/keyrings/
cp -f $HOME/.bin/originals/Default_keyring.keyring $HOME/.local/share/keyrings/

echo "####################################################################"
echo "."
echo "."
echo "Don't forget to change your LUKS password (to protect you USB), check your .bin folder for instructions!"

echo "."
echo "."
echo "####################################################################"
echo "."
echo "."


echo "Let's change your password; enter your current password (default is "1") and change to a new one"
passwd
echo "####################################################################"
echo "."
echo "."

echo "Now let's change the "root" password; use your password defined above and change the root password to a new one"
sudo passwd root
echo "####################################################################"
echo "."
echo "."


echo "Now let's reboot so changes will take effect, then login with your new password!"
echo "####################################################################"
echo "."
echo "."
sudo rm /etc/machine-id
read -p "Press any key to reboot..."
reboot
