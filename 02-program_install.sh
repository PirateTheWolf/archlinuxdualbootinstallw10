#!/bin/bash
set -e
############################################################
###		Archlinux program telepítő script	 ###
###		v2.0 (GTK/XFCE)				 ###
############################################################

sudo pacman -Syyu --noconfirm


# HANG DOLGOK TELEPÍTÉSE

sudo pacman -S pulseaudio --noconfirm --needed
sudo pacman -S pulseaudio-alsa --noconfirm --needed
sudo pacman -S pavucontrol  --noconfirm --needed
sudo pacman -S alsa-utils alsa-plugins alsa-lib alsa-firmware --noconfirm --needed
sudo pacman -S gstreamer --noconfirm --needed
sudo pacman -S gst-plugins-good gst-plugins-bad gst-plugins-base gst-plugins-ugly --noconfirm --needed
sudo pacman -S volumeicon --noconfirm --needed
sudo pacman -S playerctl --noconfirm --needed

echo "################################################################"
echo "#########       Hangrendszer telepítve          ################"
echo "################################################################"

# BLUETOOTH (Ha kell)

#sudo pacman -S --noconfirm --needed pulseaudio-bluetooth
#sudo pacman -S --noconfirm --needed bluez
#sudo pacman -S --noconfirm --needed bluez-libs
#sudo pacman -S --noconfirm --needed bluez-utils
#sudo pacman -S --noconfirm --needed blueberry

#sudo systemctl enable bluetooth.service
#sudo systemctl start bluetooth.service

#sudo sed -i 's/'#AutoEnable=false'/'AutoEnable=true'/g' /etc/bluetooth/main.conf

#echo "reboot your system then ..."
#echo "set with bluetooth icon in bottom right corner"
#echo "change to have a2dp if needed"


#echo "################################################################"
#echo "###################    T H E   E N D      ######################"
#echo "################################################################"

# PRINTER (nyomtató ha kell akkor # kivennin)

#sudo pacman -S --noconfirm --needed cups cups-pdf

#first try if you can print without foomatic  ez elől ne ved ki)
#sudo pacman -S foomatic-db-engine --noconfirm --needed
#sudo pacman -S foomatic-db foomatic-db-ppds foomatic-db-nonfree-ppds foomatic-db-gutenprint-ppds --noconfirm --needed
#sudo pacman -S ghostscript gsfonts gutenprint --noconfirm --needed
#sudo pacman -S gtk3-print-backends --noconfirm --needed
#sudo pacman -S libcups --noconfirm --needed
#sudo pacman -S hplip --noconfirm --needed
#sudo pacman -S system-config-printer --noconfirm --needed

#sudo systemctl enable org.cups.cupsd.service

#echo "After rebooting it will work"

#echo "################################################################"
#echo "#########   printer management software installed     ##########"
#echo "################################################################"

# SAMBA (hálozati megosztás ha csak egy géped van akkor nem kell # kivenni)

#sudo pacman -S --noconfirm --needed samba
#sudo wget "https://git.samba.org/samba.git/?p=samba.git;a=blob_plain;f=examples/smb.conf.default;hb=HEAD" -O /etc/samba/smb.conf.original
#sudo wget "https://raw.githubusercontent.com/arcolinux/arcolinux-system-config/master/etc/samba/smb.conf.arcolinux" -O /etc/samba/smb.conf.arcolinux
#sudo wget "https://raw.githubusercontent.com/arcolinux/arcolinux-system-config/master/etc/samba/smb.conf.arcolinux" -O /etc/samba/smb.conf
#sudo systemctl enable smb.service
#sudo systemctl start smb.service
#sudo systemctl enable nmb.service
#sudo systemctl start nmb.service

##Change your username here  ne vedd ki a #-et
#read -p "What is your login? It will be used to add this user to smb : " choice
#sudo smbpasswd -a $choice

#access samba share windows
#sudo pacman -S --noconfirm --needed gvfs-smb

#echo "################################################################"
#echo "#########   samba  software installed           ################"
#echo "################################################################"

# NETWORK DISCOVERY (ha használsz sambat akkor kell vagy van otthon nasod akkor is kell. #-et kivenni)

#sudo pacman -S --noconfirm --needed avahi
#sudo systemctl enable avahi-daemon.service
#sudo systemctl start avahi-daemon.service

#sudo pacman -S --noconfirm --needed nss-mdns

#sudo pacman -S --noconfirm --needed gvfs-smb

#sudo sed -i 's/files mymachines myhostname/files mymachines/g' /etc/nsswitch.conf

#sudo sed -i 's/\[\!UNAVAIL=return\] dns/\[\!UNAVAIL=return\] mdns dns wins myhostname/g' /etc/nsswitch.conf
#echo "################################################################"
#echo "####       network discovery  software installed        ########"
#echo "################################################################"

# TLP FOR LAPTOPS  (ha laptopotra telepíteted akkor kell)

#sudo pacman -S --noconfirm --needed tlp
#sudo systemctl enable tlp.service
#sudo systemctl start tlp.service

#echo "################################################################"
#echo "####               tlp  software installed              ########"
#echo "################################################################"

# KIEGÉSZÍTŐ PROGRAMOK

sudo pacman -S --noconfirm --needed arc-gtk-theme
sudo pacman -S --noconfirm --needed accountsservice
sudo pacman -S --noconfirm --needed baobab
sudo pacman -S --noconfirm --needed curl
sudo pacman -S --noconfirm --needed dconf-editor
sudo pacman -S --noconfirm --needed dmidecode
sudo pacman -S --noconfirm --needed ffmpegthumbnailer
sudo pacman -S --noconfirm --needed git
sudo pacman -S --noconfirm --needed gnome-disk-utility
sudo pacman -S --noconfirm --needed gnome-keyring
sudo pacman -S --noconfirm --needed gnome-system-monitor
sudo pacman -S --noconfirm --needed gparted
sudo pacman -S --noconfirm --needed grsync
sudo pacman -S --noconfirm --needed gtk-engine-murrine
sudo pacman -S --noconfirm --needed gvfs gvfs-mtp
sudo pacman -S --noconfirm --needed hardinfo
sudo pacman -S --noconfirm --needed hddtemp
sudo pacman -S --noconfirm --needed htop
sudo pacman -S --noconfirm --needed lm_sensors
sudo pacman -S --noconfirm --needed lsb-release
sudo pacman -S --noconfirm --needed mlocate
sudo pacman -S --noconfirm --needed net-tools
sudo pacman -S --noconfirm --needed polkit-gnome
sudo pacman -S --noconfirm --needed reflector
sudo pacman -S --noconfirm --needed qt5ct
sudo pacman -S --noconfirm --needed sane
sudo pacman -S --noconfirm --needed screenfetch
sudo pacman -S --noconfirm --needed scrot
sudo pacman -S --noconfirm --needed sysstat
sudo pacman -S --noconfirm --needed thunar
sudo pacman -S --noconfirm --needed thunar-archive-plugin
sudo pacman -S --noconfirm --needed thunar-volman
sudo pacman -S --noconfirm --needed tumbler
sudo pacman -S --noconfirm --needed vnstat
sudo pacman -S --noconfirm --needed wget
sudo pacman -S --noconfirm --needed wmctrl
sudo pacman -S --noconfirm --needed unclutter
sudo pacman -S --noconfirm --needed rxvt-unicode
sudo pacman -S --noconfirm --needed urxvt-perls
sudo pacman -S --noconfirm --needed xdg-user-dirs
sudo pacman -S --noconfirm --needed xdo
sudo pacman -S --noconfirm --needed xdotool
sudo pacman -S --noconfirm --needed zenity
sudo pacman -S --noconfirm --needed imagemagick
sudo pacman -S --noconfirm --needed w3m
sudo pacman -S --noconfirm --needed xfce4-notifyd
sudo pacman -S --noconfirm --needed discord

# TÖMÖRÍTŐK
sudo pacman -S --noconfirm --needed unace unrar zip unzip sharutils  uudeview  arj cabextract file-roller

# BETŰTÍPUSOK

sudo pacman -S adobe-source-sans-pro-fonts --noconfirm --needed
sudo pacman -S cantarell-fonts --noconfirm --needed
sudo pacman -S noto-fonts --noconfirm --needed
sudo pacman -S ttf-bitstream-vera --noconfirm --needed
sudo pacman -S ttf-dejavu --noconfirm --needed
sudo pacman -S ttf-droid --noconfirm --needed
sudo pacman -S ttf-hack --noconfirm --needed
sudo pacman -S ttf-inconsolata --noconfirm --needed
sudo pacman -S ttf-liberation --noconfirm --needed
sudo pacman -S ttf-roboto --noconfirm --needed
sudo pacman -S ttf-ubuntu-font-family --noconfirm --needed
sudo pacman -S tamsyn-font --noconfirm --needed
sudo pacman -S noto-fonts-emoji --noconfirm --needed

# INTEL / AMD UCODE     Vagy az intel-ucode vagy az amd-ucode kötöl azt válaszd ki amilyen procid van.
#   

#sudo pacman -S intel-ucode --noconfirm
#sudo pacman -S amd-ucode --noconfirm
sudo grub-mkconfig -o /boot/grub/grub.cfg

# SZEMÉLYES PROGRAMOK

sudo pacman -S --noconfirm --needed audacity
sudo pacman -S --noconfirm --needed audacious
sudo pacman -S --noconfirm --needed obs-studio
sudo pacman -S --noconfirm --needed breeze-icons
sudo pacman -S --noconfirm --needed breeze-gtk
sudo pacman -S --noconfirm --needed breeze
sudo pacman -S --noconfirm --needed guvcview
sudo pacman -S --noconfirm --needed keepassxc
sudo pacman -S --noconfirm --needed doublecmd-gtk2
sudo pacman -S --noconfirm --needed kdenlive
sudo pacman -S --noconfirm --needed frei0r-plugins
sudo pacman -S --noconfirm --needed dvdauthor
sudo pacman -S --noconfirm --needed cdrtools
sudo pacman -S --noconfirm --needed hunspell
sudo pacman -S --noconfirm --needed catfish
sudo pacman -S --noconfirm --needed galculator
sudo pacman -S --noconfirm --needed gimp
sudo pacman -S --noconfirm --needed gnome-font-viewer
sudo pacman -S --noconfirm --needed gpick
sudo pacman -S --noconfirm --needed ristretto
sudo pacman -S --noconfirm --needed chromium
sudo pacman -S --noconfirm --needed mpv
sudo pacman -S --noconfirm --needed smplayer
sudo pacman -S --noconfirm --needed smplayer-themes
sudo pacman -S --noconfirm --needed smplayer-skins
sudo pacman -S --noconfirm --needed vlc
sudo pacman -S --noconfirm --needed evince
sudo pacman -S --noconfirm --needed libreoffice-fresh-hu
