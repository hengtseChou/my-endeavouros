FUNC=$(declare -f _replaceLineInFile)
sudo bash -c "$FUNC; _replaceLineInFile \
    /usr/share/applications/chromium.desktop \
    'Exec=/usr/bin/chromium %U' \
    'Exec=/usr/bin/chromium --enable-features=UseOzonePlatform --ozone-platform=wayland --enable-wayland-ime %U'"
sudo bash -c "$FUNC; _replaceLineInFile \
    /usr/share/applications/code.desktop \
    'Exec=/usr/bin/code %F' \
    'Exec=/usr/bin/code --enable-features=UseOzonePlatform --ozone-platform=wayland --enable-wayland-ime %U'"
sudo bash -c "$FUNC; _replaceLineInFile \
    /usr/share/applications/rstudio.desktop \
    'Exec=/usr/lib/rstudio/rstudio %F' \
    'Exec=/usr/lib/rstudio/rstudio --enable-features=UseOzonePlatform --ozone-platform=wayland --enable-wayland-ime %U'"
