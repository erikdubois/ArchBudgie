#!/bin/bash
#
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


#Sound

sudo pacman -S alsa-utils alsa-plugins alsa-lib alsa-firmware pulseaudio pulseaudio-alsa pavucontrol  --noconfirm
sudo pacman -S gst-plugins-good gst-plugins-bad gst-plugins-base gst-plugins-ugly  gstreamer0.10-ffmpeg  --noconfirm

#Fonts

sudo pacman -S ttf-ubuntu-font-family --noconfirm
sudo pacman -S ttf-droid --noconfirm --noconfirm
sudo pacman -S ttf-inconsolata --noconfirm

#Utilities

sudo pacman -S gnome-disk-utility  --noconfirm

#Printer

sudo pacman -S cups cups-pdf ghostscript gsfonts libcups hplip system-config-printer --noconfirm
systemctl enable org.cups.cupsd.service
systemctl start org.cups.cupsd.service

#Network

sudo pacman -S networkmanager --noconfirm

# if you want a networkmanager and applet mostly for laptop/wireless as
# lan just works and gives no added value

# sudo pacman -S network-manager-applet --noconfirm


echo "################################################################"
echo "installing xbindkeys"
echo "################################################################"

sudo pacman -S xbindkeys --noconfirm

echo "You need to put the config file in the root of your home folder"


###############################################################################################

echo "################################################################"
echo "#########   distro specific software installed  ################"
echo "################################################################"

