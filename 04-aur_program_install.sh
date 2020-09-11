#!/bin/bash
set -e

yay -S --noconfirm --needed conky-git
yay -S --noconfirm --needed downgrade
yay -S --noconfirm --needed inxi
yay -S --noconfirm --needed neofetch
yay -S --noconfirm --needed pamac-aur
yay -S --noconfirm --needed mugshot
yay -S --noconfirm --needed menulibre
yay -S --noconfirm --needed lutris
yay -S --noconfirm --needed viber
yay -S --noconfirm --needed obs-linuxbrowser-bin
yay -S --noconfirm --needed vivaldi vivaldi-widevine
yay -S --noconfirm --needed noto-fonts-cjk
yay -S --noconfirm --needed mangohud lib32-mangohud
yay -S --noconfirm --needed goverlay-bin
yay -S --noconfirm --needed python2-gimp

## MANGOHUD HASZNÁLATA STEAMBEN ## Indítási opciók-> mangohud %command% ##
## MANGOHUD HASZNÁLATA LUTRISBAN ## Beállítások -> System fül (alul advanced pipa be) Command prefix-hez -> mangohud