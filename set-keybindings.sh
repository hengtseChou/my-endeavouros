#!/bin/bash

# Exit on error
set -e

# Define the list of keybindings
keybindings=(
    "activate-window-menu ['<Alt>space']"
    "always-on-top @as []"
    "begin-move ['<Alt>F7']"
    "begin-resize ['<Alt>F8']"
    "close ['<Alt>F4']"
    "cycle-group ['<Alt>F6']"
    "cycle-group-backward ['<Shift><Alt>F6']"
    "cycle-panels ['<Control><Alt>Escape']"
    "cycle-panels-backward ['<Shift><Control><Alt>Escape']"
    "cycle-windows ['<Alt>Escape']"
    "cycle-windows-backward ['<Shift><Alt>Escape']"
    "lower @as []"
    "maximize ['<Super>Up']"
    "maximize-horizontally @as []"
    "maximize-vertically @as []"
    "minimize ['<Alt>h']"
    "move-to-center @as []"
    "move-to-corner-ne @as []"
    "move-to-corner-nw @as []"
    "move-to-corner-se @as []"
    "move-to-corner-sw @as []"
    "move-to-monitor-down ['<Super><Shift>Down']"
    "move-to-monitor-left ['<Super><Shift>Left']"
    "move-to-monitor-right ['<Super><Shift>Right']"
    "move-to-monitor-up ['<Super><Shift>Up']"
    "move-to-side-e @as []"
    "move-to-side-n @as []"
    "move-to-side-s @as []"
    "move-to-side-w @as []"
    "move-to-workspace-1 ['<Super><Shift>Home']"
    "move-to-workspace-10 @as []"
    "move-to-workspace-11 @as []"
    "move-to-workspace-12 @as []"
    "move-to-workspace-2 @as []"
    "move-to-workspace-3 @as []"
    "move-to-workspace-4 @as []"
    "move-to-workspace-5 @as []"
    "move-to-workspace-6 @as []"
    "move-to-workspace-7 @as []"
    "move-to-workspace-8 @as []"
    "move-to-workspace-9 @as []"
    "move-to-workspace-down ['<Control><Shift><Alt>Down']"
    "move-to-workspace-last ['<Super><Shift>End']"
    "move-to-workspace-left ['<Super><Shift>Page_Up', '<Super><Shift><Alt>Left', '<Control><Shift><Alt>Left']"
    "move-to-workspace-right ['<Super><Shift>Page_Down', '<Super><Shift><Alt>Right', '<Control><Shift><Alt>Right']"
    "move-to-workspace-up ['<Control><Shift><Alt>Up']"
    "panel-main-menu @as []"
    "panel-run-dialog ['<Alt>F2']"
    "raise @as []"
    "raise-or-lower @as []"
    "set-spew-mark @as []"
    "show-desktop ['<Super>h']"
    "switch-applications @as []"
    "switch-applications-backward @as []"
    "switch-group ['<Super>Above_Tab', '<Alt>Above_Tab']"
    "switch-group-backward ['<Shift><Super>Above_Tab', '<Shift><Alt>Above_Tab']"
    "switch-input-source ['<Super>space', 'XF86Keyboard']"
    "switch-input-source-backward ['<Shift><Super>space', '<Shift>XF86Keyboard']"
    "switch-panels ['<Control><Alt>Tab']"
    "switch-panels-backward ['<Shift><Control><Alt>Tab']"
    "switch-to-workspace-1 ['<Super>Home']"
    "switch-to-workspace-10 @as []"
    "switch-to-workspace-11 @as []"
    "switch-to-workspace-12 @as []"
    "switch-to-workspace-2 @as []"
    "switch-to-workspace-3 @as []"
    "switch-to-workspace-4 @as []"
    "switch-to-workspace-5 @as []"
    "switch-to-workspace-6 @as []"
    "switch-to-workspace-7 @as []"
    "switch-to-workspace-8 @as []"
    "switch-to-workspace-9 @as []"
    "switch-to-workspace-down ['<Control><Alt>Down']"
    "switch-to-workspace-last ['<Super>End']"
    "switch-to-workspace-left ['<Super>Page_Up', '<Super><Alt>Left', '<Control><Alt>Left']"
    "switch-to-workspace-right ['<Super>Page_Down', '<Super><Alt>Right', '<Control><Alt>Right']"
    "switch-to-workspace-up ['<Control><Alt>Up']"
    "switch-windows ['<Alt>Tab']"
    "switch-windows-backward ['<Shift><Alt>Tab']"
    "toggle-above @as []"
    "toggle-fullscreen @as []"
    "toggle-maximized ['<Alt>F10']"
    "toggle-on-all-workspaces @as []"
    "unmaximize ['<Super>Down', '<Alt>F5']"
)

# Loop through each keybinding and execute gsettings set
for binding in "${keybindings[@]}"; do
    gsettings set org.gnome.desktop.wm.keybindings $binding
done

# custom keybinding
gsettings set org.gnome.settings-daemon.plugins.media-keys custom-keybindings ['/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom0/', '/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom1/', '/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom2/']

gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom0/ name 'terminal'
gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom0/ command 'gnome-terminal'
gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom0/ binding '<Control><Alt>t'

gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom1/ name 'settings'
gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom1/ command 'gnome-control-center'
gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom1/ binding '<Control><Alt>s'

gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom2/ name 'rofi'
gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom2/ command 'rofi -show drun'
gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom2/ binding '<Control>space'
echo "Keybindings set successfully."
