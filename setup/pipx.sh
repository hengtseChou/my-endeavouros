packagesPipx=(
    poetry
    twine
    gnome-extensions-cli
)
pipx install "${packagesPipx[@]}"
pipx ensurepath
source $HOME/.bashrc
poetry config virtualenvs.in-project true
