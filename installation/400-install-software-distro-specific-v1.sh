#!/bin/bash
#set -e
##################################################################################################################
# Written to be used on 64 bits computers
# Author 	: 	Erik Dubois
# Website 	: 	http://www.erikdubois.be
##################################################################################################################
##################################################################################################################
#
#   DO NOT JUST RUN THIS. EXAMINE AND JUDGE. RUN AT YOUR OWN RISK.
#
##################################################################################################################

echo "################################################################"
echo "#########   distro specific software installed  ################"
echo "################################################################"

#Fonts

## sudo pacman -S ttf-ubuntu-font-family --noconfirm --needed conflicts with ttf-google-fonts
## sudo pacman -S ttf-droid --noconfirm --noconfirm --needed  conflicts with ttf-google-fonts
## sudo pacman -S ttf-inconsolata --noconfirm --needed        conflicts with ttf-google-fonts
sudo pacman -S noto-fonts --noconfirm --needed

#file manager



echo "You can install samba - folder sharing over network in next script"
echo "You can copy my personal settings to your system or "

echo "You can reboot now and start computing"
echo "You need to login into the correct desktop environment"
echo "At the login screen click on the small icon (gauge) to select budgie"
echo "Type in the terminal the following code if you want to reboot"
echo "sudo reboot"
