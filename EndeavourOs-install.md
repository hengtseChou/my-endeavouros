# Partition

- /efi: 512 MB. fat32. flagged as boot
- (no mount point) 8 GB, linuxswap, flagged as swap
- /: ext4
- /home: ext4

# After installation

## Change power management

- show battery percentage, auto suspend only on battery power
- fix suspend freeze from nvidia
	- https://forum.endeavouros.com/t/how-to-fix-the-sleep-suspend-issue-glitch-with-crashing-nvidia-propietary-drivers-and-x11-wayland-on-kde-plasma-arch-endeavouros/42303/3
	
## Install softwares

- fcitx5-im, fcitx5-chewing (https://home.gamer.com.tw/artwork.php?sn=5694325). change input switch to left/right shift
- zsh
- bitwarden
- libreoffice
- gnome-terminal, gnome-shell-extensions, gnome-tweaks
- rofi
- btop, htop
- touchegg (start, enable systemctl)
- neofetch
- r, rstudio-desktop-bin
- vscode-studio-code-bin
- timeshift
- chromium (with line extension)

## keyboard shortcut

- gnome-terminal: ctl+alt+t
- gnome-control-center: ctl+alt+s
- rofi -show drun: ctl+space
- windows-> hide window: alt+h
- navigation-> hide all windows: super+h
- navigation-> switch windows: alt+tab

## settings

- just perfection: skip overview when login (also in dash to dock appearance section), windoew demands attention focus
- center new window
