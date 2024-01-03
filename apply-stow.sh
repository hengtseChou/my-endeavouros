#!/bin/bash

# Exit on error
set -e

git clone https://github.com/hank-chouu/dotfiles.git ~/.dotfiles
cd ~/.dotfiles

# rofi
rm ~/.config/rofi/config.rasi
stow -S rofi

# ssh
rm -rf ~/.ssh
stow -S ssh

# fcitx5
rm ~/.config/fcitx5/config
rm ~/.config/fcitx5/profile
stow -S fcitx5

# zsh
rm ~/.zshrc
stow -S zsh

cd
echo "apply stow settings successfully"
