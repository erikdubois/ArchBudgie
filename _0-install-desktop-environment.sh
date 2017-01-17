#!/bin/bash
#
#======================================================================================
#                                
# Author  : Erik Dubois at http://www.erikdubois.be
# License : Distributed under the terms of GNU GPL version 2 or later
# 
# AS ALLWAYS, KNOW WHAT YOU ARE DOING.
#======================================================================================

# if you are in a base system with no xserver and desktop...
# this will install xserver, gdm and budgie

echo " Xserver setup"

sudo pacman -S xorg-server xorg-server-utils xorg-xinit xorg-twm xterm --noconfirm
sudo pacman -S x86-video-nouveau --noconfirm

echo "Desktop Environment"

sudo pacman -S budgie-desktop gnome --noconfirm

echo "Display manager"

sudo pacman -S gdm --noconfirm
sudo systemctl enable gdm.service
sudo systemctl start gdm.service