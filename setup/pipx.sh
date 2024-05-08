packagesPipx=(
    poetry
    twine
    gnome-extensions-cli
)
pipx install "${packagesPipx[@]}"
poetry config virtualenvs.in-project true
