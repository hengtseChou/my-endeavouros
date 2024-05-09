pwd=$PWD
git clone https://gist.github.com/9bad76d97ff17e37980cf40416fc5596.git $HOME/rstudio-desktop-bin
cd $HOME/rstudio-desktop-bin
makepkg
sudo pacman -U --noconfirm rstudio*
cd $pwd
