# ArchBudgie

A collection of scripts to easily install all software, icons, themes, cursors, ... automatically.


Surfn icons at AUR and [Github](https://github.com/erikdubois/Surfn)

Sardi icons at AUR and [Sourceforge](https://sourceforge.net/projects/sardi/files/)

Sardi v9.1.1 Sardi Mono Numix Colora and Aureola Acros v1.7.8

![Screenshots](http://i.imgur.com/9wIQ90c.jpg)

![Screenshots](http://i.imgur.com/pSsIB5T.jpg)


Sardi Mono Papirus Dark with Arc Dark Grey and Sardi v7.9.2 at AUR and [Sourceforge](https://sourceforge.net/projects/sardi/files/)

![Screenshots](http://i.imgur.com/ZcLBe0z.png)


Surfn v 4.7.0 at AUR and [Github](https://github.com/erikdubois/Surfn)

![Screenshots](http://i.imgur.com/ZC5xpeL.jpg)


Sardi v 7.5.0 at AUR and [Sourceforge](https://sourceforge.net/projects/sardi/files/)

![Screenshots](http://i.imgur.com/KjZPupw.jpg)


Sardi v 7.4.3 at AUR and [Sourceforge](https://sourceforge.net/projects/sardi/files/)

![Screenshots](http://i.imgur.com/q9tLrHK.jpg)



Sardi v 7.2.9 at AUR and [Sourceforge](https://sourceforge.net/projects/sardi/files/)

![Screenshots](http://i.imgur.com/kFWc9Bb.jpg)



Sardi v 7.2.1 at AUR and [Sourceforge](https://sourceforge.net/projects/sardi/files/)

![Screenshots](http://i.imgur.com/3teJbPR.jpg)



# FASE 1

Steps to take when installing Budgie from scratch

Pop in the latest arch usb

loadkeys be-latin1

cfdisk /dev/sda

delete all partitions

sda1 	/ everything minus 8GB for swap making sure it is primary and bootable (asterisk!)

sda2 		/swap	8 GB primary type swap (82)	

write - yes -quit

mkfs.ext4 /dev/sda1

mkswap /dev/sda2

swapon /dev/sda2

mount /dev/sda1 /mnt

pacstrap -i /mnt base base-devel

genfstab -U /mnt >> /mnt/etc/fstab

arch-chroot /mnt /bin/bash

nano /etc/locale.gen

uncomment these lines

	be_BY.UTF8
	en_GB.UTF8
	en_US.UTF8

CTRL + X , yes, enter

locale-gen

echo LANG=en_US.UTF-8 > /etc/locale.conf


export LANG=en_US.UTF-8

nano /etc/vconsole.conf

	KEYMAP=be-latin1
	FONT=lat9w-16

CTRL + X , yes, enter

rm /etc/localtime

ln -s /usr/share/zoneinfo/Europe/Brussels /etc/localtime

hwclock --systohc --utc

echo ArchErik > /etc/hostname

nano /etc/hosts


	<ip-address> <hostname.domain.org> <hostname>
	127.0.0.1 localhost.localdomain localhost ArchErik
	::1   localhost.localdomain localhost ArchErik


pacman -S networkmanager

systemctl enable NetworkManager

mkinitcpio -p linux

passwd

pacman -S grub os-prober

grub-install --target=i386-pc --recheck /dev/sda

grub-mkconfig -o /boot/grub/grub.cfg

umount /dev/sda1

exit

reboot







#FASE 2 root

login with root
and use the password

useradd -m -g users -G wheel,storage,power -s /bin/bash erik

passwd erik

EDITOR=nano visudo

Look for these lines with an hashtag in front
	
	 %wheel ALL=(ALL) ALL

hashtag (#) should be gone

CTRL = X , yes and enter


pacman -S bash-completion


exit







# FASE 3 Desktop environment with software


Login with new account i.e. here erik and password


Rather then typing all commands one by one we can start using the power of the scripts that are on the github.

We still need to install xorg-server, video driver, budgie-desktop, software, icons, themes, ...

We are still in the terminal and type

	sudo pacman -S git
	git clone https://www.github.com/erikdubois/ArchBudgie
	cd ArchBudgie
	ls-al

Now it is up to you which scripts you like to run. You can read the contents in the terminal with the 'cat' command.

I will run the following script

	_0-install-desktop-environment-vx.sh (xorg and budgie)

You will see that you will get a graphical interface. That is the gdm display manager.
Login but make sure that you use budgie as default desktop with the 'gauge' symbol.
This is the standard screen without any of desktop improvements yet.


Since I have an azerty keyboard, I go first to settings, Regions and Language and add the Belgian keyboard.

Since there is no keyboard shortcut for terminal yet, I go to settings, keyboard and make a shortcut with CTRL+ALT+T to gnome-terminal. We will later replace it with a more beautiful transparent gnome-terminal.


Continue to run the rest of the scripts via terminal.


	_0-install-fastest-mirrors-v1.sh   (check the countries)
	0-install-packer-for-aur-make-build-vx.sh (AUR software)
	1-install-core-software-vx.sh
	2-install-extra-software-vx.sh
	3-install-themes-icons-cursors-conky-plank-v.sh
	4-install-software-distro-specific-vx.sh
	5-install-samba-vx.sh

To be able to run the scripts you have to type "./" in front to these lines.


#Remember


##Setting nano instead of vi

	export VISUAL=nano

	export EDITOR=nano




# Youtube sources

Showing all sardi and surfn icons on Archlinux Budgie


https://www.youtube.com/watch?v=nrISx6JX258





# F  A  Q
--------------------

#What can you do if the script does not execute?

Since I sometimes forget to make the script executable, I include here what you can do to solve that.

A script can only run when it is marked as an executable.

	ls -al 

Above code will reveal if a script has an "x". X meaning executable.
Google "chmod" and "execute" and you will find more info.

For now if this happens, you should apply this code in the terminal and add the file name.

	chmod +x typeyourfilename

Then you can execute it by typing

	./typeyourfilename

Or you can follow these steps

![Screenshots](http://i.imgur.com/vXsOaFL.gif)


-------------------------------------------------
#But that is the fun in Linux.

You can do whatever <b>Y O U</b> want.

Share the knowledge.

I share my knowledge at http://erikdubois.be
------------------------------------------------







