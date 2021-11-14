#!/bin/bash
#
# Install scripts for Linux.

set -e

for name in dotfiles/*; do
    filename=$(basename "$name")
    echo "Copying \`$filename' to \`${HOME}/.${filename}'"
    if [ -d "$name" ]; then
        cp -R "$name/" "${HOME}/.${filename}"
    else
        cp "$name" "${HOME}/.${filename}"
    fi
done

echo "Copying \`bin' to \`${HOME}/bin'"
cp -R bin "${HOME}"
