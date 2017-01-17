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

#software from 'normal' repositories
sudo pacman -S --noconfirm --needed arc-gtk-theme archey3 baobab bleachbit catfish clementine curl 
sudo pacman -S --noconfirm --needed darktable dconf-editor dmidecode
sudo pacman -S --noconfirm --needed evince evolution filezilla firefox galculator geary gimp git glances gnome-tweak-tool
sudo pacman -S --noconfirm --needed hardinfo hddtemp hexchat htop inkscape inxi
sudo pacman -S --noconfirm --needed gparted gpick grsync lm_sensors
sudo pacman -S --noconfirm --needed meld mlocate mpv numlockx 
sudo pacman -S --noconfirm --needed openshot opera pinta plank redshift
sudo pacman -S --noconfirm --needed sane screenfetch scrot shotwell shutter simple-scan simplescreenrecorder smplayer sysstat 
sudo pacman -S --noconfirm --needed terminator thunar 
sudo pacman -S --noconfirm --needed variety vlc vnstat wget unclutter  

###############################################################################################

# installation of zippers and unzippers
sudo pacman -S --noconfirm --needed unace unrar zip unzip sharutils  uudeview  arj cabextract file-roller

###############################################################################################


numlockx on
sudo systemctl enable vnstat
sudo systemctl start vnstat

echo "################################################################"
echo "###################    core software installed  ################"
echo "################################################################"

