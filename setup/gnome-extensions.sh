shellExtensions=(
    AlphabeticalAppGrid@stuarthayhurst
    blur-my-shell@aunetx
    caffeine@patapon.info
    dash-to-dock@micxgx.gmail.com
    drive-menu@gnome-shell-extensions.gcampax.github.com
    gnome-ui-tune@itstime.tech
    kimpanel@kde.org
)
gext install "${shellExtensions[@]}"
_copyGSchemasToGLib AlphabeticalAppGrid@stuarthayhurst AlphabeticalAppGrid
glib-compile-schemas $HOME/.local/share/glib-2.0/schemas/
