# Installation

## Partition

1. boot:
   - file system: fat32
   - mount point: /efi
   - size: 512MB
   - flag: boot
2. swap (optional):
   - file system: linuxswap
   - no mount point
   - size: 8GB (some figure close to your memory)
   - flag: swap
3. root:
   - file system: ext4
   - mount point: /
   - size: at least 15GB is recommended
   - no flag needed
4. home
   - file system: ext4
   - mount point: /home
   - size: whatever you like

## Desktop Enviroment

GNOME

## Boot

systemd-boot

# Add software

## input method

- fcitx5-im
- fcitx5-chewing

## shell & terminal

- zsh
- oh-my-zsh
- gnome-terminal

## customizing gnome

- gnome-shell-extensions
- gnome-browser-connector
- gnome-tweaks
- touchegg
- dconf-editor

## build system

- cmake
- electron25

## system info

- htop
- btop
- neofetch
- baobab
- hardinfo (AUR)
- cpu-x (AUR)

## graphic card manager ([link](https://github.com/Askannz/optimus-manager))

- optimus-manager
- gdm-prime (AUR)
- optimus-manager-qt

## backup

- timeshift

## password manager

- bitwarden

## office-suite

- libreoffice-fresh

## App launcher & Appimage launcher

- rofi
- appimagelauncher (AUR)

## browser

- chromium

## developement

- r
- rstudio-desktop-bin (AUR)
- vscode-studio-code-bin (AUR)

## music streaming

- ncspot
- monophony (AUR)

## GUI for package manager

- octopi (AUR)
- bauh (AUR)

## disk space cleaner

- bleachbit

## others

- font-manager
- gitg
- gparted
- gnome-logs
- angrysearch (AUR)
- zotero (AUR)
- marker
- xcolor
- vlc
- prettier

## gnome-extensions

- user-theme
- appindicatorsupport
- dash-to-dock
- blur-my-shell
- Vitals
- just-perfection-desktop
- AlphabeticalAppGrid
- x11gestures
- arch-update
- notification-timeout
- drive-menu

# Tweak settings

## Change power management

- show battery percentage, auto suspend only on battery power
- fix suspend freeze from nvidia
  - https://forum.endeavouros.com/t/how-to-fix-the-sleep-suspend-issue-glitch-with-crashing-nvidia-propietary-drivers-and-x11-wayland-on-kde-plasma-arch-endeavouros/42303/3

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

# My neofetch

```
╭─░▒▓ hank@endeavour: ~
╰─ neofetch
                     ./o.                  hank@endeavour
                   ./sssso-                --------------
                 `:osssssss+-              OS: EndeavourOS Linux x86_64
               `:+sssssssssso/.            Host: Swift SF314-57G V1.21
             `-/ossssssssssssso/.          Kernel: 6.6.7-arch1-1
           `-/+sssssssssssssssso+:`        Uptime: 25 mins
         `-:/+sssssssssssssssssso+/.       Packages: 1111 (pacman)
       `.://osssssssssssssssssssso++-      Shell: zsh 5.9
      .://+ssssssssssssssssssssssso++:     Resolution: 1920x1080
    .:///ossssssssssssssssssssssssso++:    DE: GNOME 45.2
  `:////ssssssssssssssssssssssssssso+++.   WM: Mutter
`-////+ssssssssssssssssssssssssssso++++-   WM Theme: Marble-gray-dark
 `..-+oosssssssssssssssssssssssso+++++/`   Theme: Adwaita [GTK2/3]
   ./++++++++++++++++++++++++++++++/:.     Icons: Papirus [GTK2/3]
  `:::::::::::::::::::::::::------``       Terminal: gnome-terminal
                                           CPU: Intel i5-1035G1 (8) @ 3.600GHz
                                           GPU: NVIDIA GeForce MX250
                                           GPU: Intel Iris Plus Graphics G1
                                           Memory: 3217MiB / 7624MiB

```
