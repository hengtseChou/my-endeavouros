#!/bin/bash

# Exit on error
set -e

# Parse command-line options
options=$(getopt -o '' --long add-optimus,add-timeshift -n "$0" -- "$@")
if [ $? -ne 0 ]; then
  exit 1
fi
eval set -- "$options"

# Update mirror list
sudo pacman -S --noconfirm --needed reflector
sudo reflector --verbose --latest 5 --sort rate --save /etc/pacman.d/mirrorlist

# Update system
sudo pacman -Syu --noconfirm

# Install snapper support
yay -S --noconfirm --needed snapper-support

# Process options: install optimus manager/timeshift
while true; do
  case "$1" in
    --add-optimus)
      yay -S --noconfirm --needed optimus-manager optimus-manager-qt gdm-prime
      shift
      ;;
    --add-timeshift)
      sudo pacman -S --noconfirm --needed timeshift
      shift
      ;;
    --)
      shift
      break
      ;;
    *)
      echo "Unrecognized option: $1"
      shift
      ;;
  esac
done

# Install input method 
sudo pacman -S --noconfirm --needed fcitx5-im fcitx5-chewing
echo -e "GTK_IM_MODULE=fcitx\nQT_IM_MODULE=fcitx\nXMODIFIERS=@im=fcitx" | sudo tee -a /etc/environment

# Install shell
sudo pacman -S --noconfirm --needed zsh 

# Install gnome stuffs
sudo pacman -S --noconfirm --needed gnome-shell-extensions gnome-browser-connector gnome-tweaks touchegg dconf-editor font-manager gitg gparted gnome-logs gnome-terminal
yay -S --noconfirm --needed  decoder impression

# Install build system & utilities
sudo pacman -S --noconfirm --needed cmake electron25 gcc-fortran gdal python-pipx python-build python-setuptools

# Install development tools
sudo pacman -S --noconfirm --needed r
# rstudio currently acting weird
# yay -S --noconfirm rstudio-desktop-bin
# yay -S --noconfirm visual-studio-code-bin
sudo pacman -S --noconfirm --needed docker
sudo systemctl enable docker.service
sudo usermod -aG docker $USER # to run docker without sudo

# Install system info tools
sudo pacman -S --noconfirm --needed htop btop neofetch baobab ncdu
yay -S --noconfirm --needed hardinfo cpu-x

# Install graphic card manager
# This part is comment out since I no longer want to deal with nvidia anymore
# sudo pacman -S --noconfirm --needed optimus-manager optimus-manager-qt
# yay -S --noconfirm gdm-prime

# Install backup tool
sudo pacman -S --noconfirm --needed timeshift

# Install password manager
sudo pacman -S --noconfirm --needed bitwarden

# Install office-suite
sudo pacman -S --noconfirm --needed libreoffice-fresh

# Install app launcher & appimage launcher
sudo pacman -S --noconfirm --needed rofi
yay -S --noconfirm --needed appimagelauncher

# Install browser (I need some extension from chromium)
sudo pacman -S --noconfirm --needed chromium

# Install music streaming
yay -S --noconfirm --needed ncspot monophony

# Install GUI for package manager
yay -S --noconfirm --needed octopi bauh

# Install disk space cleaner
sudo pacman -S --noconfirm --needed bleachbit

# Install cli app
sudo pacman -S --noconfirm --needed prettier github-cli speedtest-cli xcolor zoxide lsd stow rclone
yay -S --noconfirm --needed fast

# Install other stuffs
sudo pacman -S --noconfirm --needed marker vlc
yay -S --noconfirm --needed angrysearch zotero

# pipx install 
pipx install poetry
pipx install twine
pipx install trash-cli
pipx install gnome-extensions-cli

# install icons
mkdir -p ~/.icons
wget -qO- https://git.io/papirus-icon-theme-install | DESTDIR="$HOME/.icons" sh

# install theme
mkdir -p ~/source
git clone https://github.com/imarkoff/Marble-shell-theme.git ~/source/Marble-shell-theme
cd ~/source/Marble-shell-theme
python install.py -a

# install gnome extensions
gnome-extensions-cli install Vitals@CoreCoding.com 
gnome-extensions-cli install user-theme@gnome-shell-extensions.gcampax.github.com
gnome-extensions-cli install appindicatorsupport@rgcjonas.gmail.com
gnome-extensions-cli install dash-to-dock@micxgx.gmail.com
gnome-extensions-cli install blur-my-shell@aunetx
gnome-extensions-cli install AlphabeticalAppGrid@stuarthayhurst
gnome-extensions-cli install x11gestures@joseexposito.github.io
gnome-extensions-cli install notification-timeout@chlumskyvaclav.gmail.com
gnome-extensions-cli install drive-menu@gnome-shell-extensions.gcampax.github.com
gnome-extensions-cli install arch-update@RaphaelRochet
gnome-extensions-cli install gnome-ui-tune@itstime.tech
gnome-extensions-cli install waylandorx11@injcristianrojas.github.com

# add necessary gsettings schema
./enable-gsettings-schemas.sh dash-to-dock@micxgx.gmail.com dash-to-dock
./enable-gsettings-schemas.sh user-theme@gnome-shell-extensions.gcampax.github.com user-theme
./enable-gsettings-schemas.sh AlphabeticalAppGrid@stuarthayhurst alphabetical-app-grid

# tweak settings
gsettings set org.gnome.desktop.wm.preferences focus-new-windows 'smart'
gsettings set org.gnome.desktop.wm.preferences button-layout 'appmenu:minimize,maximize,close'
gsettings set org.gmone.mutter center-new-windows 'true'
gsettings set org.gnome.shell.extensions.dash-to-dock disable-overview-on-startup 'true' 
gsettings set org.gnome.shell.extensions.dash-to-dock animate-show-apps 'true' 
gsettings set org.gnome.shell.extensions.dash-to-dock show-trash 'false' 
gsettings set org.gnome.shell.extensions.dash-to-dock show-mounts 'true'
gsettings set org.gnome.shell.extensions.dash-to-dock show-mounts-network 'false'
gsettings set org.gnome.shell.extensions.dash-to-dock show-mounts-only-mounted 'true'
gsettings set org.gnome.shell.extensions.dash-to-dock transparency-mode 'FIXED'
gsettings set org.gnome.shell.extensions.dash-to-dock background-color '#ffffff'
gsettings set org.gnome.shell.extensions.dash-to-dock background-opacity 0.6
gsettings set org.gnome.shell.extensions.user-theme name 'Marble-gray-dark'
gsettings set org.gnome.shell.extensions.alphabetical-app-grid folder-order-position 'start'
gsettings set org.gnome.shell.extensions.alphabetical-app-grid sort-folder-contents true
gsettings set org.gnome.desktop.interface show-battery-percentage 'true'
gsettings set org.gnome.desktop.interface gtk-theme 'Adwaita-dark'
gsettings set org.gnome.desktop.interface icon-theme 'Papirus'
gsettings set org.gnome.desktop.interface font-name 'Cantarell 12'
gsettings set org.gnome.desktop.interface document-font-name 'Cantarell 12'
gsettings set org.gnome.desktop.interface monospace-font-name 'Source Code Pro 11'
gsettings set org.gnome.settings-daemon.plugins.power idle-dim 'false'
gsettings set org.gnome.settings-daemon.plugins.power power-button-action 'suspend'
gsettings set org.gnome.settings-daemon.plugins.power power-saver-profile-on-low-battery 'true'
gsettings set org.gnome.settings-daemon.plugins.power sleep-inactive-ac-timeout 900
gsettings set org.gnome.settings-daemon.plugins.power sleep-inactive-ac-type 'nothing'
gsettings set org.gnome.settings-daemon.plugins.power sleep-inactive-battery-timeout 1800
gsettings set org.gnome.settings-daemon.plugins.power sleep-inactive-battery-type 'suspend'

# set keybindings
./set-keybindings.sh

# configure zsh
./zsh-config.sh

# enable bluetooth
sudo systemctl enable bluetooth
