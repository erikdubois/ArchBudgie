#!/bin/bash
#======================================================================================
#
#                  -`
#                  .o+`                 
#                 `ooo/                  
#                `+oooo:                 M  a  d  e    on 
#               `+oooooo:               
#               -+oooooo+:              
#             `/:-:++oooo+:             
#            `/++++/+++++++:                      A  R  C  H
#           `/++++++++++++++:           
#          `/+++ooooooooooooo/`         
#         ./ooosssso++osssssso+`        
#        .oossssso-````/ossssss+`       
#       -osssssso.      :ssssssso.          F  o   r   
#      :osssssss/        osssso+++.     
#     /ossssssss/        +ssssooo/-     
#   `/ossssso+/:-        -:/+osssso+-                           A   R   C   H
#  `+sso+:-`                 `.-/+oso: 
# `++:.                           `-/+/
# .`                                 `/
#
#======================================================================================
#
#======================================================================================
#                               Archlinux and XFCE4
# 
# Author  : Erik Dubois at http://www.erikdubois.be
# License : Distributed under the terms of GNU GPL version 2 or later
# 
# AS ALLWAYS, KNOW WHAT YOU ARE DOING.
#======================================================================================
#


#wget http://gdlp01.c-wss.com/gds/0/0100006900/01/cnijfilter2-source-5.20-1.tar.gz -O /tmp/cnijfilter2-source-5.20-1.tar.gz

#https://aur.archlinux.org/packages/cnijfilter2-mg7700/

packer cnijfilter2-mg7700  --noedit

packer scangearmp2-mg7700 --noedit

sudo pacman -S sane simple-scan xsane --noconfirm

#

# go to printer 
# find on ip adres
# LPT1
# select canon drivers