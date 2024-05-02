# install timeshift and make snapshot right after clean installation
sudo pacman -S --noconfirm --needed timeshift grub-btrfs inotify-tools
sudo systemctl enable cronie.service
sudo systemctl start cronie.service
sudo timeshift --create --comment "fresh install"
sudo grub-mkconfig -o /boot/grub/grub.cfg 
sudo _replaceLineInFile /etc/systemd/system/grub-btrfsd.service "ExecStart=/usr/bin/grub-btrfsd --syslog /.snapshots" "ExecStart=/usr/bin/grub-btrfsd --syslog --timeshift-auto"
sudo systemctl start grub-btrfsd
sudo systemctl enable grub-btrfsd