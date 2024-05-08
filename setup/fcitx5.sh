# setup wayland
# ref: https://fcitx-im.org/wiki/Using_Fcitx_5_on_Wayland
FUNC=$(declare -f _addLineToFile)
sudo bash -c "$FUNC; _addLineToFile 'XMODIFIERS=@im=fcitx\nQT_IM_MODULE=fcitx' /etc/environment"
# configs will be added through my-hypr configuration
# _addLineToFile "gtk-im-module=\"fcitx\"" $HOME/.gtkrc-2.0
# _addLineToFile "gtk-im-module=fcitx" $HOME/.config/gtk-3.0/settings.ini 
# _addLineToFile "gtk-im-module=fcitx" $HOME/.config/gtk-4.0/settings.ini 
gsettings set org.gnome.settings-daemon.plugins.xsettings overrides "{'Gtk/IMModule':<'fcitx'>}"