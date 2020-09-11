#!/bin/bash
set -e
############################################################
###		Compozitor és GUI telepítő XFCE-hez	 ###
###		xcompmgr / gcompmgr			 ###
############################################################

## Alapértelmezett compozitort kikapcsolni!
## Beállítások -> Ablakkezelő hangolása -> Kompozitálás

sudo pacman -S xcompmgr --noconfirm

yay -S gcompmgr --noconfirm

echo "################################################################"
echo "#########         Compozitor telepítve          ################"
echo "################################################################"
