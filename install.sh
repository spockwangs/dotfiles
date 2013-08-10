#!/bin/bash

for name in *; do
    if [ "${name: -1}" == '~' ]; then
        continue
    fi
    target="$HOME/.${name}"
    if [ -e "$target" ]; then
        if [ ! -L "$target" ]; then
            echo "WARNING: \`$target' exists but not a symlink"
            continue
        else
            unlink $target
        fi
    fi
    extension="${name##*.}"
    if [ "$extension" != "md" -a "$extension" != "sh" ]; then
        echo "Creating \`$target'"
        ln -s "${PWD}/${name}" "$target"
    fi
done
