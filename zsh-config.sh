#!/bin/bash

# Exit on error
set -e

chsh -s /bin/zsh
echo q
echo exit

# oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" <<!
exit
!

# powerlevel10k
mkdir -p ~/source
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ~/source/powerlevel10k
echo 'source ~/source/powerlevel10k/powerlevel10k.zsh-theme' >>~/.zshrc

# zsh syntax highlight
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

# zsh autosuggestion
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

echo "zsh config completed. remember to log out and log back in."
