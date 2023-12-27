#!/bin/bash

# Exit on error
set -e

if [ "$#" -ne 2 ]; then
    echo "Usage: $0 <UUID> <NAME>"
    exit 1
fi

UUID="$1"
NAME="$2"
SCHEMA_FILE="$HOME/.local/share/gnome-shell/extensions/$UUID/schemas/org.gnome.shell.extensions.$NAME.gschema.xml"
SCHEMA_DEST="$HOME/.local/share/glib-2.0/schemas/"

mkdir -p "$SCHEMA_DEST"
cp "$SCHEMA_FILE" "$SCHEMA_DEST"
cd "$SCHEMA_DEST"
glib-compile-schemas .
cd "$HOME"
echo "add schema org.gnome.shell.extensions.$NAME"
