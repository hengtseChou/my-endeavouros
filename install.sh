#!/bin/bash
set -e
set -u
set -o pipefail

source ./functions.sh

sudo reflector --verbose -c TW --protocol https --sort rate --latest 20 --download-timeout 5 --threads 5 --save /etc/pacman.d/mirrorlist
yay -Syu --noconfirm

# install timeshift and make a fresh snapshot
source .setup/timeshift.sh

# install general packages
source ./packages/utils.sh
_installPackagesPacman "${packagesPacman[@]}"
_installPackagesYay "${packagesYay[@]}"

# install gnome packages in addition to eos-gnome-pkg-list
source ./packages/gnome.sh
_installPackagesPacman "${packagesPacman[@]}"
_installPackagesYay "${packagesYay[@]}"

# install general applications
source ./packages/applications.sh
_installPackagesPacman "${packagesPacman[@]}"
_installPackagesYay "${packagesYay[@]}"
source ./setup/fcitx5.sh
source ./setup/docker.sh
source ./setup/zsh.sh # after here the shell will be zsh

# install hypr packages
source ./packages/my-hypr.sh
_installPackagesPacman "${packagesPacman[@]}"
_installPackagesYay "${packagesYay[@]}"
source ./setup/hypr-plugins.sh

# install theming packages
source ./packages/theming.sh
_installPackagesPacman "${packagesPacman[@]}"
_installPackagesYay "${packagesYay[@]}"

# setup grub theme
source ./setup/grub.sh

# create config file symlinks
git clone https://github.com/hank-chouu/my-hypr $HOME
source ./setup/symlinks.sh
source $HOME/.zshrc

source ./setup/git.sh
source ./setup/npm.sh
source ./setup/pipx.sh
source ./setup/gnome-extensions.sh
source ./setup/gsettings.sh
