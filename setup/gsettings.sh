gsettings set org.gnome.desktop.wm.preferences focus-new-windows 'smart'
gsettings set org.gnome.desktop.wm.preferences button-layout 'appmenu:minimize,maximize,close'
gsettings set org.gnome.mutter center-new-windows true
gsettings set org.gnome.shell.extensions.dash-to-dock dock-position 'BOTTOM'
gsettings set org.gnome.shell.extensions.dash-to-dock disable-overview-on-startup true
gsettings set org.gnome.shell.extensions.dash-to-dock animate-show-apps true
gsettings set org.gnome.shell.extensions.dash-to-dock show-trash false
gsettings set org.gnome.shell.extensions.dash-to-dock show-mounts true
gsettings set org.gnome.shell.extensions.dash-to-dock show-mounts-network false
gsettings set org.gnome.shell.extensions.dash-to-dock show-mounts-only-mounted true
# not sure if this still works
# gsettings set org.gnome.shell.extensions.dash-to-dock transparency-mode 'FIXED'
# gsettings set org.gnome.shell.extensions.dash-to-dock background-color '#ffffff'
# gsettings set org.gnome.shell.extensions.dash-to-dock background-opacity 0.6
gsettings set org.gnome.shell.extensions.user-theme name 'Yaru-dark'
gsettings set org.gnome.shell.extensions.alphabetical-app-grid folder-order-position 'start'
gsettings set org.gnome.shell.extensions.alphabetical-app-grid sort-folder-contents true
gsettings set org.gnome.desktop.interface show-battery-percentage true
gsettings set org.gnome.desktop.peripherals.touchpad natural-scroll true
gsettings set org.gnome.settings-daemon.plugins.power idle-dim false
gsettings set org.gnome.settings-daemon.plugins.power power-button-action 'suspend'
gsettings set org.gnome.settings-daemon.plugins.power power-saver-profile-on-low-battery true
gsettings set org.gnome.settings-daemon.plugins.power sleep-inactive-ac-timeout 900
gsettings set org.gnome.settings-daemon.plugins.power sleep-inactive-ac-type 'nothing'
gsettings set org.gnome.settings-daemon.plugins.power sleep-inactive-battery-timeout 1800
gsettings set org.gnome.settings-daemon.plugins.power sleep-inactive-battery-type 'suspend'

# open any terminal
gsettings set com.github.stunkymonkey.nautilus-open-any-terminal terminal alacritty

# keybindings in gnome
gsettings set org.gnome.desktop.wm.keybindings minimize "['<Alt>h']" 
gsettings set org.gnome.desktop.wm.keybindings show-desktop "['<Super>h']" 
gsettings set org.gnome.desktop.wm.keybindings switch-applications "@as []" 
gsettings set org.gnome.desktop.wm.keybindings switch-windows "['<Alt>Tab']" 
gsettings set org.gnome.settings-daemon.plugins.media-keys custom-keybindings "['/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom0/', '/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom1/']"
gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom0/ name 'terminal'
gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom0/ command 'alacritty'
gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom0/ binding '<Control><Alt>t'
gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom1/ name 'settings'
gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom1/ command 'gnome-control-center'
gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom1/ binding '<Control><Alt>s'

# theme
gsettings set org.gnome.desktop.interface cursor-theme "Adwaita"
gsettings set org.gnome.desktop.interface cursor-size 24
gsettings set org.gnome.desktop.interface document-font-name "Ubuntu 12"
gsettings set org.gnome.desktop.interface monospace-font-name "Source Code Pro 11"
gsettings set org.gnome.desktop.interface font-name "Ubuntu 12"
gsettings set org.gnome.desktop.interface gtk-theme "Yaru"
gsettings set org.gnome.desktop.interface icon-theme "Yaru"

# overview menu folders
gsettings set org.gnome.desktop.app-folders folder-children "['applications', 'media', 'office', 'settings', 'tools', 'utilities']"
gsettings set org.gnome.desktop.app-folders.folder:/org/gnome/desktop/app-folders/folders/applications/ name "applications"
gsettings set org.gnome.desktop.app-folders.folder:/org/gnome/desktop/app-folders/folders/media/ name "media"
gsettings set org.gnome.desktop.app-folders.folder:/org/gnome/desktop/app-folders/folders/office/ name "office"
gsettings set org.gnome.desktop.app-folders.folder:/org/gnome/desktop/app-folders/folders/settings/ name "settings"
gsettings set org.gnome.desktop.app-folders.folder:/org/gnome/desktop/app-folders/folders/tools/ name "system tools"
gsettings set org.gnome.desktop.app-folders.folder:/org/gnome/desktop/app-folders/folders/utilities/ name "utilities"

# overview menu apps
gsettings set org.gnome.shell favorite-apps "[ \
    'firefox.desktop', \
    'org.gnome.Nautilus.desktop', \
    'Alacritty.desktop', \
    'code.desktop', \
    'rstudio.desktop']"
gsettings set org.gnome.desktop.app-folders.folder:/org/gnome/desktop/app-folders/folders/applications/ apps "[ \
    'balena-etcher.desktop', \
    'bitwarden.desktop', \
    'org.bleachbit.BleachBit.desktop', \
    'btrfs-assistant.desktop', \
    'org.gnome.Calculator.desktop', \
    'org.gnome.Calendar.desktop', \
    'org.gnome.clocks.desktop', \
    'nl.hjdskes.gcolor3.desktop', \
    'wl-color-picker.desktop', \
    'org.gnome.Evince.desktop', \
    'org.fcitx.Fcitx5.desktop', \
    'org.gnome.FileRoller.desktop', \
    'org.gnome.FontManager.desktop', \
    'org.gnome.Loupe.desktop', \
    'jupyter-notebook.desktop', \
    'jupyterlab.desktop', \
    'org.gnome.Logs.desktop', \
    'org.gnome.Meld.desktop', \
    'com.github.jeromerobert.pdfarranger.desktop', \
    'ranger.desktop', \
    'rofi.desktop', \
    'org.gnome.Screenshot.desktop']"
gsettings set org.gnome.desktop.app-folders.folder:/org/gnome/desktop/app-folders/folders/media/ apps "[ \
    'mpv.desktop', \
    'spotify-launcher.desktop', \
    'org.gnome.Totem.desktop', \
    'vlc.desktop']"
gsettings set org.gnome.desktop.app-folders.folder:/org/gnome/desktop/app-folders/folders/office/ apps "[ \
    'libreoffice-startcenter.desktop', \
    'libreoffice-base.desktop', \
    'libreoffice-calc.desktop', \
    'libreoffice-draw.desktop', \
    'libreoffice-impress.desktop', \
    'libreoffice-math.desktop', \
    'libreoffice-writer.desktop']"
gsettings set org.gnome.desktop.app-folders.folder:/org/gnome/desktop/app-folders/folders/settings/ apps "[ \
    'nm-connection-editor.desktop', \
    'blueman-manager.desktop', \
    'org.gnome.Extensions.desktop', \
    'fcitx5-configtool.desktop', \
    'io.github.realmazharhussain.GdmSettings.desktop', \
    'cups.desktop', \
    'gnome-nettool.desktop', \
    'system-config-printer.desktop', \
    'pavucontrol.desktop', \
    'rofi-theme-selector.desktop', \
    'org.gnome.Settings.desktop']"
gsettings set org.gnome.desktop.app-folders.folder:/org/gnome/desktop/app-folders/folders/tools/ apps "[ \
    'btop.desktop', \
    'org.gnome.baobab.desktop', \
    'org.gnome.DiskUtility.desktop', \
    'hardinfo2.desktop', \
    'lstopo.desktop', \
    'htop.desktop', \
    'org.gnome.PowerStats.desktop', \
    'org.gnome.SystemMonitor.desktop', \
    'org.gnome.Usage.desktop']"
gsettings set org.gnome.desktop.app-folders.folder:/org/gnome/desktop/app-folders/folders/utilities/ apps "[ \
    'bssh.desktop', \
    'bvnc.desktop', \
    'avahi-discover.desktop', \
    'cmake-gui.desktop', \
    'eos-update-notifier-configure.desktop', \
    'electron28.desktop', \
    'eos-apps-info.desktop', \
    'eos-log-tool.desktop', \
    'eos-quickstart.desktop', \
    'eos-update.desktop', \
    'org.fcitx.fcitx5-migrator.desktop', \
    'org.gnome.FontViewer.desktop', \
    'yad-icon-browser.desktop', \
    'ipython.desktop', \
    'kbd-layout-viewer5.desktop', \
    'octopi-cachecleaner.desktop', \
    'qv4l2.desktop', \
    'qvidcap.desktop', \
    'r.desktop', \
    'reflector-simple.desktop', \
    'stoken-gui.desktop', \
    'stoken-gui-small.desktop', \
    'welcome.desktop', \
    'xdvi.desktop', \
    'yad-settings.desktop']"

# gdm 
gsettings set io.github.realmazharhussain.GdmSettings.appearance cursor-theme 'Adwaita'
gsettings set io.github.realmazharhussain.GdmSettings.appearance shell-theme 'Yaru-blue-dark'
gsettings set io.github.realmazharhussain.GdmSettings.appearance icon-theme 'Yaru'
gsettings set io.github.realmazharhussain.GdmSettings.fonts font 'Ubuntu 12'
gsettings set io.github.realmazharhussain.GdmSettings.misc enable-logo true
gsettings set io.github.realmazharhussain.GdmSettings.misc logo "$HOME/endeavouros-install-notes/Endeavour-horizontal-white.png"
gsettings set io.github.realmazharhussain.GdmSettings.touchpad natural-scrolling true
gsettings set io.github.realmazharhussain.GdmSettings.touchpad tap-to-click true
gsettings set io.github.realmazharhussain.GdmSettings.touchpad two-finger-scrolling true
gsettings set io.github.realmazharhussain.GdmSettings.touchpad disable-while-typing true
gsettings set io.github.realmazharhussain.GdmSettings.sound theme 'Yaru'
gsettings set io.github.realmazharhussain.GdmSettings.sound event-sounds true
gsettings set io.github.realmazharhussain.GdmSettings.top-bar show-battery-percentage true