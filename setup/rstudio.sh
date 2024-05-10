pwd=$PWD
git clone https://gist.github.com/9bad76d97ff17e37980cf40416fc5596.git $HOME/rstudio-desktop-bin
cd $HOME/rstudio-desktop-bin
makepkg
sudo pacman -U --noconfirm rstudio-desktop-bin-2024.04.0.735-1-x86_64.pkg.tar.zst
cd $pwd
