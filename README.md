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

# Software

## input method

- fcitx5-im
- fcitx5-chewing

## shell & terminal

- zsh
- oh-my-zsh (-> powerlevel10k)
- gnome-terminal

## customizing gnome

- gnome-shell-extensions
- gnome-browser-connector
- gnome-tweaks
- touchegg
- dconf-editor

## build system & utilities

- cmake
- electron25
- gcc-fortran
- gdal
- python-pipx
- python-build
- python-setuptools

## developement

- r
- rstudio-desktop-bin (AUR)
- vscode-studio-code-bin (AUR)
- docker

## system info

- htop
- btop
- neofetch
- baobab
- ncdu
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

## app launcher & appimage launcher

- rofi
- appimagelauncher (AUR)

## browser

- chromium

## developement

- r
- rstudio-desktop-bin (AUR)
- vscode-studio-code-bin (AUR)
- docker

## music streaming

- ncspot
- monophony (AUR)

## gui for package manager

- octopi (AUR)
- bauh (AUR)

## disk space cleaner

- bleachbit

## pipx

- twine
- poetry
- trash-cli

## cli app

- prettier
- github-cli
- fast (AUR)
- speedtest-cli
- xcolor
- zoxide
- lsd

## others

- font-manager
- gitg
- gparted
- gnome-logs
- angrysearch (AUR)
- zotero (AUR)
- marker
- vlc

# Gnome-extensions (by uuid)

- user-theme@gnome-shell-extensions.gcampax.github.com
- appindicatorsupport@rgcjonas.gmail.com
- dash-to-dock@micxgx.gmail.com
- blur-my-shell@aunetx
- Vitals@CoreCoding.com
- just-perfection-desktop@just-perfection
- AlphabeticalAppGrid@stuarthayhurst
- x11gestures@joseexposito.github.io
- notification-timeout@chlumskyvaclav.gmail.com
- drive-menu@gnome-shell-extensions.gcampax.github.com
- arch-update@RaphaelRochet

# Tweak settings

## Change power management

- show battery percentage, auto suspend only on battery power

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

## systemctl

### fix nvidia-related issues ([link](https://forum.endeavouros.com/t/how-to-fix-the-sleep-suspend-issue-glitch-with-crashing-nvidia-propietary-drivers-and-x11-wayland-on-kde-plasma-arch-endeavouros/42303/3))

```
sudo systemctl enable nvidia-suspend.service
sudo systemctl enable nvidia-hibernate.service
sudo systemctl enable nvidia-resume.service
```

## docker

```
sudo systemctl enable docker.service
sudo usermod -aG docker $USER # to run docker without sudo
```

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
