#!/bin/bash

OS=`uname -o`
if [ "$OS" == "Cygwin" ]; then
    for name in *; do
        # Skip "*~" files.
        if [ "${name: -1}" == '~' ]; then
            continue
        fi
        target="$HOME/.${name}"
        extension="${name##*.}"
        if [ "$extension" != "md" -a "$extension" != "sh" ]; then
            echo "Creating \`$target'"
            rm -rf "$target"
            cp -r "${PWD}/${name}" "$target"
        fi
    done
else
    for name in *; do
        # Skip "*~" files.
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
fi
