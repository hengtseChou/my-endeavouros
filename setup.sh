#!/bin/bash
set -e
set -u
set -o pipefail

source ./functions.sh

sudo reflector --verbose -c TW --protocol https --sort rate --latest 20 --download-timeout 5 --threads 5 --save /etc/pacman.d/mirrorlist
yay -Syu --noconfirm

source ./timeshift-init.sh

