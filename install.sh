#!/bin/bash

# Exit on error
set -e
# Update mirror list
sudo pacman -S --noconfirm --needed reflector
sudo reflector --latest 5 --sort rate --save /etc/pacman.d/mirrorlist

# Update system
sudo pacman -Syu --noconfirm

# Parse command-line options
options=$(getopt -o '' --long add-optimus,add-timeshift -n "$0" -- "$@")
if [ $? -ne 0 ]; then
  exit 1
fi
eval set -- "$options"
use_timeshift="false"

# Process options: install optimus manager/timeshift
while true; do
  case "$1" in
    --add-optimus)
      sudo pacman -R --noconfirm gdm
      yay -S --noconfirm --needed optimus-manager optimus-manager-qt gdm-prime
      sudo sed -i 's/^#WaylandEnable=false/WaylandEnable=false/' /etc/gdm/custom.conf
      sudo systemctl enable optimus-manager.service
      sudo systemctl start optimus-manager
      shift
      ;;
    --add-timeshift)
      sudo pacman -S --noconfirm --needed timeshift
      use_tmeshift="true"
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

# Install timeshift if not using snapper
if [ "$using_timeshift" = "false" ]; then
  yay -S --noconfirm snapper-support
fi

# Install input method 
sudo pacman -S --noconfirm --needed fcitx5-im fcitx5-chewing
env_file="/etc/environment"
im_config="GTK_IM_MODULE=fcitx\nQT_IM_MODULE=fcitx\nXMODIFIERS=@im=fcitx"
if ! grep -qF "$im_config" "$env_file"; then
  echo -e "$im_config" | sudo tee -a "$env_file" > /dev/null
fi

# Install shell
sudo pacman -S --noconfirm --needed zsh 

# Install gnome stuffs
sudo pacman -S --noconfirm --needed gnome-shell-extensions gnome-browser-connector gnome-tweaks touchegg dconf-editor font-manager gitg gparted gnome-logs gnome-terminal
sudo systemctl enable touchegg.service
sudo systemctl start touchegg
yay -S --noconfirm --needed decoder impression

# Install build system & utilities
sudo pacman -S --noconfirm --needed cmake electron25 gcc-fortran gdal python-pipx python-build python-setuptools

# Install development tools
sudo pacman -S --noconfirm --needed r
# rstudio currently acting weird
# yay -S --noconfirm --needed rstudio-desktop-bin
# yay -S --noconfirm --needed visual-studio-code-bin
sudo pacman -S --noconfirm --needed docker
sudo systemctl enable docker.service
sudo usermod -aG docker $USER # to run docker without sudo

# Install system info tools
sudo pacman -S --noconfirm --needed htop btop neofetch baobab ncdu
yay -S --noconfirm --needed hardinfo cpu-x

# Install password manager
sudo pacman -S --noconfirm --needed bitwarden

# Install office-suite
sudo pacman -S --noconfirm --needed libreoffice-fresh

# Install app launcher and download themes
sudo pacman -S --noconfirm --needed rofi
git clone https://github.com/lr-tech/rofi-themes-collection.git
mkdir -p ~/.local/share/rofi/themes/
cp -a ~/rofi-themes-collection/themes/. ~/.local/share/rofi/themes/
rm -rf ~/rofi-themes-collection

# Install appimage launcher
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
sudo pacman -S --noconfirm --needed prettier github-cli speedtest-cli xcolor zoxide lsd rclone stow
yay -S --noconfirm --needed fast

# Install other stuffs
sudo pacman -S --noconfirm --needed marker vlc
yay -S --noconfirm --needed angrysearch zotero

# pipx install 
pipx ensurepath
source ~/.profile
pipx install poetry
pipx install twine
pipx install trash-cli
pipx install gnome-extensions-cli

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
./enable-gsettings-schemas.sh AlphabeticalAppGrid@stuarthayhurst AlphabeticalAppGrid

# install icons
mkdir -p ~/.icons
wget -qO- https://git.io/papirus-icon-theme-install | DESTDIR="$HOME/.icons" sh

# install theme
mkdir -p ~/source
git clone https://github.com/imarkoff/Marble-shell-theme.git ~/source/Marble-shell-theme
cd ~/source/Marble-shell-theme
python install.py -a
# rm -rf ~/source/Marble-shell-theme

# tweak settings
sudo systemctl enable bluetooth
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

# stow config
./apply-stow.sh
