#!/bin/bash
set -e
############################################################
###		Compozitor és GUI telepítő XFCE-hez	 ###
###		xcompmgr / gcompmgr			 ###
############################################################

#Ez csak akkor kell ha xfce4-et telepítetel asztali környezetnek!

## Alapértelmezett compozitort kikapcsolni!
## Beállítások -> Ablakkezelő hangolása -> Kompozitálás

sudo pacman -S xcompmgr --noconfirm

yay -S gcompmgr --noconfirm

echo "################################################################"
echo "#########         Compozitor telepítve          ################"
echo "################################################################"
