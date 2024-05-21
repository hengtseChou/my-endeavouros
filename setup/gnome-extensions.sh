# not going to use gnome x11
shellExtensions=(
    AlphabeticalAppGrid@stuarthayhurst
    # appindicatorsupport@rgcjonas.gmail.com
    blur-my-shell@aunetx
    caffeine@patapon.info
    dash-to-dock@micxgx.gmail.com
    drive-menu@gnome-shell-extensions.gcampax.github.com
    gnome-ui-tune@itstime.tech
    # notification-timeout@chlumskyvaclav.gmail.com
    # Vitals@CoreCoding.com
    user-theme@gnome-shell-extensions.gcampax.github.com
)
gext install "${shellExtensions[@]}"
_copyGSchemasToGLib dash-to-dock@micxgx.gmail.com dash-to-dock
_copyGSchemasToGLib user-theme@gnome-shell-extensions.gcampax.github.com user-theme
_copyGSchemasToGLib AlphabeticalAppGrid@stuarthayhurst AlphabeticalAppGrid
glib-compile-schemas $HOME/.local/share/glib-2.0/schemas/
