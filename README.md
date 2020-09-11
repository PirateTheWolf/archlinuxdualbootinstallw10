## Archlinux telepítő scriptek
#### Publikus verzio 1.0.32


#### Ezt a scriptcsomagot azért raktam össze, hogy segítsen (magyarázattal, haladóknak) a vanilla Arch telepítésében. A jelenlegi csomagok GTK és QT programokat is tartalmaznak, de jellemzően XFCE4-re lett finomhangolva. Ettől függetlenül persze működik más asztali felülettel is. A scripteket és segítő txt-ket logikai sorrendre igyekeztem bontani.

### A Scriptek és segítő txt-k tartalma:

- **00 - vanilla_arch_install.txt**   - TXT - (Archlinux telepítés a kezdetektől **HALADÓ TELEPÍTÉS, NEM KEZDŐKNEK**)  
- **01-core_settings.sh**             - Script - Detektálja és beállítja a maximális elérhető CPU magok számát.  
### ***NAGYON FONTOS! a 02-es és 04-es scriptnél, AMI NEKED NEM KELL AZT #-EL VEDD KI! AMI KELL, AZELŐL VEDD EL A #-ET!***
- **02-program_install.sh**           - Script - Telepít, hangot, bluetooth-t, apró rendszer segédprogramokat, TLP-t laptopokhoz, fájlmegosztást, nyomtatókat, betűtípusokat, **INTEL / AMD microkódot (TELEPÍTÉSKOR NEKED KELL KIVÁLASZTANI)**, valamit pár olyan programot amit én személyesen használok, ezeket a script alján találod.  
- **03-yay-aur_helper-install.txt**   - TXT - A yay AUR helper telepítésének útmutatója  
- **04-aur_program_install.sh**       - Script - Programok az AUR tárolóból. (**Az eljárás ugyanaz mint a 02-es scriptnél! ELLENŐRIZD!**)  
- **05-nvidia_steam.sh**              - Script - A legfrisebb nvidia driver, és 32 bites függőségeinek telepítése, valamint a steam és 32 bites függőségeinek telepítése!  
- **06-icons_themes.sh**              - Script - 2 ikon, és 1 egérkurzor téma. (opcionális) 
- **07 - compozitor.sh**              - Script - xcompmgr és gcompmgr kompozitor és GUI script 
- **99-TELEPÍTÉS_UTÁNI_BEÁLLÍTÁSOK.TXT** - TXT - Néhány nagyon hasznos telepítés utáni beállítás. Swapfájl létrehozása, Magyar tükörszerverek beállítása stb.
