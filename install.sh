#!/bin/bash
# version 2024.05.08
set -e
set -u
set -o pipefail

install_gnome=0
install_hypr=0
install_theming=0
install_develop=0

cat <<"EOF"
 _   _             _    _       _____ ___  ____
| | | | __ _ _ __ | | _( )___  | ____/ _ \/ ___|
| |_| |/ _` | '_ \| |/ /// __| |  _|| | | \___ \
|  _  | (_| | | | |   <  \__ \ | |__| |_| |___) |
|_| |_|\__,_|_| |_|_|\_\ |___/ |_____\___/|____/

EOF

source ./functions.sh
echo ":: System update"
sudo reflector --verbose -c TW --protocol https --sort rate --latest 20 --download-timeout 5 --threads 5 --save /etc/pacman.d/mirrorlist
yay -Syu --noconfirm

# install figlet first because i want big words
_installPackagesPacman figlet
figlet Timeshift
if _prompt_proceed "\n:: Install Timeshift and make a fresh snapshot."; then
  source .setup/timeshift.sh
fi

# install general packages
figlet Utils
if _prompt_proceed "\n:: Install additional utils."; then
  source ./packages/utils.sh
  _installPackagesPacman "${packagesPacman[@]}"
  _installPackagesYay "${packagesYay[@]}"
fi

# install gnome packages in addition to eos-gnome-pkg-list
figlet GNOME
if _prompt_proceed "\n:: Install additional GNOME packages."; then
  install_gnome=1
  source ./packages/gnome.sh
  _installPackagesPacman "${packagesPacman[@]}"
  _installPackagesYay "${packagesYay[@]}"
fi

# install hypr packages
figlet Hyprland
if _prompt_proceed "\n:: Install Hyprland environment."; then
  install_hypr=1
  source ./packages/my-hypr.sh
  _installPackagesPacman "${packagesPacman[@]}"
  _installPackagesYay "${packagesYay[@]}"
  source ./setup/hypr-plugins.sh
fi

# install general applications
figlet Apps
if _prompt_proceed "\n:: Install useful applications."; then
  source ./packages/applications.sh
  _installPackagesPacman "${packagesPacman[@]}"
  _installPackagesYay "${packagesYay[@]}"
  source ./setup/fcitx5.sh
  source ./setup/zsh.sh
fi

# install development toolkits
figlet Develop
if _prompt_proceed "\n:: Install development toolkits."; then
  install_develop=1
  source ./packages/development.sh
  _installPackagesPacman "${packagesPacman[@]}"
  _installPackagesYay "${packagesYay[@]}"
  source ./setup/rstudio.sh
  source ./setup/docker.sh
fi

# install theming packages
figlet Themes
if _prompt_proceed "\n:: Install theming packages."; then
  install_theming=1
  source ./packages/theming.sh
  _installPackagesPacman "${packagesPacman[@]}"
  _installPackagesYay "${packagesYay[@]}"
fi

# setup grub theme
figlet GRUB
if _prompt_proceed "\n:: Install grub theme."; then
  source ./setup/grub.sh
fi

# create config file symlinks
if [ "$install_hypr" -eq 1 ] && [ "$install_theming" -eq 1 ]; then
  figlet my-hypr
  if _prompt_proceed "\n:: Install my Hyprland configs."; then
    git clone https://github.com/hank-chouu/my-hypr $HOME
    source ./setup/symlinks.sh
    source $HOME/.zshrc
  fi
fi

# install extensions
if [ "$install_develop" -eq 1 ]; then
  figlet Extensions
  if _prompt_proceed "\n:: Install extensions (npm/go/pipx)."; then
    source ./setup/npm.sh
    source ./setup/go.sh
    source ./setup/pipx.sh
    if [ "$install_gnome" -eq 1] && [ "$install_theming" -eq 1 ]; then
      source ./setup/gnome-extensions.sh
      source ./setup/gsettings.sh
    fi
  fi
fi

# install executables
figlet bin
if _prompt_proceed "\n:: Install my executables."; then
  git clone https://github.com/hank-chouu/my-bin $HOME/bin
fi

# git configs
figlet git
if _prompt_proceed "\n:: Configures git. Don't proceed unless you are me." --inverse; then
  source ./setup/git.sh
fi

# complete
figlet Done
if _prompt_proceed "\n:: It is recommended to reboot your system."; then
  systemctl reboot
fi
