gsettings set org.gnome.desktop.wm.preferences focus-new-windows 'smart'
gsettings set org.gnome.desktop.wm.preferences button-layout 'appmenu:minimize,maximize,close'
gsettings set org.gnome.mutter center-new-windows 'true'
gsettings set org.gnome.shell.extensions.dash-to-dock disable-overview-on-startup 'true' 
gsettings set org.gnome.shell.extensions.dash-to-dock animate-show-apps 'true' 
gsettings set org.gnome.shell.extensions.dash-to-dock show-trash 'false' 
gsettings set org.gnome.shell.extensions.dash-to-dock show-mounts 'true'
gsettings set org.gnome.shell.extensions.dash-to-dock show-mounts-network 'false'
gsettings set org.gnome.shell.extensions.dash-to-dock show-mounts-only-mounted 'true'
# not sure if this still works
# gsettings set org.gnome.shell.extensions.dash-to-dock transparency-mode 'FIXED'
# gsettings set org.gnome.shell.extensions.dash-to-dock background-color '#ffffff'
# gsettings set org.gnome.shell.extensions.dash-to-dock background-opacity 0.6
gsettings set org.gnome.shell.extensions.user-theme name 'Yaru-dark'
gsettings set org.gnome.shell.extensions.alphabetical-app-grid folder-order-position 'start'
gsettings set org.gnome.shell.extensions.alphabetical-app-grid sort-folder-contents true
gsettings set org.gnome.desktop.interface show-battery-percentage 'true'
gsettings set org.gnome.settings-daemon.plugins.power idle-dim 'false'
gsettings set org.gnome.settings-daemon.plugins.power power-button-action 'suspend'
gsettings set org.gnome.settings-daemon.plugins.power power-saver-profile-on-low-battery 'true'
gsettings set org.gnome.settings-daemon.plugins.power sleep-inactive-ac-timeout 900
gsettings set org.gnome.settings-daemon.plugins.power sleep-inactive-ac-type 'nothing'
gsettings set org.gnome.settings-daemon.plugins.power sleep-inactive-battery-timeout 1800
gsettings set org.gnome.settings-daemon.plugins.power sleep-inactive-battery-type 'suspend'

# keybindings in gnome
gsettings set org.gnome.desktop.wm.keybindings activate-window-menu "['<Alt>space']"
gsettings set org.gnome.desktop.wm.keybindings always-on-top "@as []"
gsettings set org.gnome.desktop.wm.keybindings begin-move "['<Alt>F7']"
gsettings set org.gnome.desktop.wm.keybindings begin-resize "['<Alt>F8']"
gsettings set org.gnome.desktop.wm.keybindings close "['<Alt>F4']"
gsettings set org.gnome.desktop.wm.keybindings cycle-group "['<Alt>F6']"
gsettings set org.gnome.desktop.wm.keybindings cycle-group-backward "['<Shift><Alt>F6']"
gsettings set org.gnome.desktop.wm.keybindings cycle-panels "['<Control><Alt>Escape']"
gsettings set org.gnome.desktop.wm.keybindings cycle-panels-backward "['<Shift><Control><Alt>Escape']"
gsettings set org.gnome.desktop.wm.keybindings cycle-windows "['<Alt>Escape']"
gsettings set org.gnome.desktop.wm.keybindings cycle-windows-backward "['<Shift><Alt>Escape']"
gsettings set org.gnome.desktop.wm.keybindings lower "@as []"
gsettings set org.gnome.desktop.wm.keybindings maximize "['<Super>Up']"
gsettings set org.gnome.desktop.wm.keybindings maximize-horizontally "@as []"
gsettings set org.gnome.desktop.wm.keybindings maximize-vertically "@as []"
gsettings set org.gnome.desktop.wm.keybindings minimize "['<Alt>h']"
gsettings set org.gnome.desktop.wm.keybindings move-to-center "@as []"
gsettings set org.gnome.desktop.wm.keybindings move-to-corner-ne "@as []"
gsettings set org.gnome.desktop.wm.keybindings move-to-corner-nw "@as []"
gsettings set org.gnome.desktop.wm.keybindings move-to-corner-se "@as []"
gsettings set org.gnome.desktop.wm.keybindings move-to-corner-sw "@as []"
gsettings set org.gnome.desktop.wm.keybindings move-to-monitor-down "['<Super><Shift>Down']"
gsettings set org.gnome.desktop.wm.keybindings move-to-monitor-left "['<Super><Shift>Left']"
gsettings set org.gnome.desktop.wm.keybindings move-to-monitor-right "['<Super><Shift>Right']"
gsettings set org.gnome.desktop.wm.keybindings move-to-monitor-up "['<Super><Shift>Up']"
gsettings set org.gnome.desktop.wm.keybindings move-to-side-e "@as []"
gsettings set org.gnome.desktop.wm.keybindings move-to-side-n "@as []"
gsettings set org.gnome.desktop.wm.keybindings move-to-side-s "@as []"
gsettings set org.gnome.desktop.wm.keybindings move-to-side-w "@as []"
gsettings set org.gnome.desktop.wm.keybindings move-to-workspace-1 "['<Super><Shift>Home']"
gsettings set org.gnome.desktop.wm.keybindings move-to-workspace-10 "@as []"
gsettings set org.gnome.desktop.wm.keybindings move-to-workspace-11 "@as []"
gsettings set org.gnome.desktop.wm.keybindings move-to-workspace-12 "@as []"
gsettings set org.gnome.desktop.wm.keybindings move-to-workspace-2 "@as []"
gsettings set org.gnome.desktop.wm.keybindings move-to-workspace-3 "@as []"
gsettings set org.gnome.desktop.wm.keybindings move-to-workspace-4 "@as []"
gsettings set org.gnome.desktop.wm.keybindings move-to-workspace-5 "@as []"
gsettings set org.gnome.desktop.wm.keybindings move-to-workspace-6 "@as []"
gsettings set org.gnome.desktop.wm.keybindings move-to-workspace-7 "@as []"
gsettings set org.gnome.desktop.wm.keybindings move-to-workspace-8 "@as []"
gsettings set org.gnome.desktop.wm.keybindings move-to-workspace-9 "@as []"
gsettings set org.gnome.desktop.wm.keybindings move-to-workspace-down "['<Control><Shift><Alt>Down']"
gsettings set org.gnome.desktop.wm.keybindings move-to-workspace-last "['<Super><Shift>End']"
gsettings set org.gnome.desktop.wm.keybindings move-to-workspace-left "['<Super><Shift>Page_Up', '<Super><Shift><Alt>Left', '<Control><Shift><Alt>Left']"
gsettings set org.gnome.desktop.wm.keybindings move-to-workspace-right "['<Super><Shift>Page_Down', '<Super><Shift><Alt>Right', '<Control><Shift><Alt>Right']"
gsettings set org.gnome.desktop.wm.keybindings move-to-workspace-up "['<Control><Shift><Alt>Up']"
gsettings set org.gnome.desktop.wm.keybindings panel-main-menu "@as []"
gsettings set org.gnome.desktop.wm.keybindings panel-run-dialog "['<Alt>F2']"
gsettings set org.gnome.desktop.wm.keybindings raise "@as []"
gsettings set org.gnome.desktop.wm.keybindings raise-or-lower "@as []"
gsettings set org.gnome.desktop.wm.keybindings set-spew-mark "@as []"
gsettings set org.gnome.desktop.wm.keybindings show-desktop "['<Super>h']"
gsettings set org.gnome.desktop.wm.keybindings switch-applications "@as []"
gsettings set org.gnome.desktop.wm.keybindings switch-applications-backward "@as []"
gsettings set org.gnome.desktop.wm.keybindings switch-group "['<Super>Above_Tab', '<Alt>Above_Tab']"
gsettings set org.gnome.desktop.wm.keybindings switch-group-backward "['<Shift><Super>Above_Tab', '<Shift><Alt>Above_Tab']"
gsettings set org.gnome.desktop.wm.keybindings switch-input-source "['<Super>space', 'XF86Keyboard']"
gsettings set org.gnome.desktop.wm.keybindings switch-input-source-backward "['<Shift><Super>space', '<Shift>XF86Keyboard']"
gsettings set org.gnome.desktop.wm.keybindings switch-panels "['<Control><Alt>Tab']"
gsettings set org.gnome.desktop.wm.keybindings switch-panels-backward "['<Shift><Control><Alt>Tab']"
gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-1 "['<Super>Home']"
gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-10 "@as []"
gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-11 "@as []"
gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-12 "@as []"
gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-2 "@as []"
gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-3 "@as []"
gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-4 "@as []"
gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-5 "@as []"
gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-6 "@as []"
gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-7 "@as []"
gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-8 "@as []"
gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-9 "@as []"
gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-down "['<Control><Alt>Down']"
gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-last "['<Super>End']"
gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-left "['<Super>Page_Up', '<Super><Alt>Left', '<Control><Alt>Left']"
gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-right "['<Super>Page_Down', '<Super><Alt>Right', '<Control><Alt>Right']"
gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-up "['<Control><Alt>Up']"
gsettings set org.gnome.desktop.wm.keybindings switch-windows "['<Alt>Tab']"
gsettings set org.gnome.desktop.wm.keybindings switch-windows-backward "['<Shift><Alt>Tab']"
gsettings set org.gnome.desktop.wm.keybindings toggle-above "@as []"
gsettings set org.gnome.desktop.wm.keybindings toggle-fullscreen "@as []"
gsettings set org.gnome.desktop.wm.keybindings toggle-maximized "['<Alt>F10']"
gsettings set org.gnome.desktop.wm.keybindings toggle-on-all-workspaces "@as []"
gsettings set org.gnome.desktop.wm.keybindings unmaximize "['<Super>Down', '<Alt>F5']"

# custom keybinding
gsettings set org.gnome.settings-daemon.plugins.media-keys custom-keybindings "['/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom0/', '/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom1/']"

gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom0/ name 'terminal'
gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom0/ command 'alacritty'
gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom0/ binding '<Control><Alt>t'

gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom1/ name 'settings'
gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom1/ command 'gnome-control-center'
gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom1/ binding '<Control><Alt>s'
