#!/bin/sh

echo "####################################################################"
echo "."
echo "WARNING: This will delete all your configs. Press ctrl+c to abort!!"
echo "."
echo "####################################################################"
echo "."
echo "."
read -p "Press ctrl+c to abort or enter to continue..."


rm -rf $HOME/.cache/* 
rm -rf $HOME/.gnupg/* 
rm -rf $HOME/.nv/* 
rm -rf $HOME/.pki/*

#rm -rf $HOME/.config/nemo/*
rm -rf $HOME/.config/pulse/*
#rm -rf $HOME/.config/evolution/*

rm $HOME/.local/share/*.xbel
#rm $HOME/.local/share/.*
#rm -rf $HOME/.local/share/evolution/*
#rm -rf $HOME/.local/share/fish/* 
rm -rf $HOME/.local/share/fish/generated_completions/*
rm -rf $HOME/.local/share/gvfs-metadata/*
rm -rf $HOME/.local/share/icc/*

rm -rf $HOME/.local/share/keyrings/*
cp -f $HOME/.bin/originals/default $HOME/.local/share/keyrings/
cp -f $HOME/.bin/originals/Default_keyring.keyring $HOME/.local/share/keyrings/

rm -rf $HOME/.local/share/locale/*
rm -rf $HOME/.local/share/parcellite/*
rm -rf $HOME/.local/state/wireplumber/*

#[ -f /etc/machine-id ] && sudo rm /etc/machine-id
sudo rm /etc/machine-id

sudo bleachbit
bleachbit

sudo rm -r /var/cache/fontconfig/*
sudo rm -r /var/cache/man/*
sudo rm -r /var/cache/pacman/pkg/*
sudo rm -r /var/cache/samba/*
sudo rm -r /var/cache/samba/msg.lock/*
sudo rm -r /var/cache/swcatalog/cache/*

sudo rm -r /var/lib/pacman/sync/*
sudo rm -r /var/log/Xorg*.log
sudo rm -rf /root/.cache/*
sudo rm -rf /root/.config/micro/*
#sudo rm -rf /root/.local/share/*
sudo rm -rf /root/.local/*
sudo rm -rf /root/.gnupg

sudo rm -rf /var/lib/lightdm/.cache/fontconfig/*
sudo rm -rf /var/lib/lightdm/.cache/lightdm-gtk-greeter/*
sudo rm -rf /var/lib/lightdm/.cache/mesa_shader_cache/*

sudo rm -f /var/lib/NetworkManager/*.lease
sudo rm -f /var/lib/NetworkManager/secret_key
sudo rm -f /var/lib/NetworkManager/timestamps

sudo rm -f /var/lib/samba/private/passdb.tdb
sudo rm -f /var/lib/samba/private/secrets.tdb
sudo rm -rf /var/lib/samba/private/msg.sock/*

sudo rm -rf /var/log/journal/*
sudo rm -rf /var/log/lightdm/*.old
sudo rm -rf /var/log/samba/*


rm -rf $HOME/.cache/* 
#rm -rf $HOME/.local/share/fish/*
cp $HOME/.bin/originals/fish_history $HOME/.local/share/fish/
sudo sync

