#!/bin/bash
#
# Install scripts for Linux.

set -e
CWD=$(pwd)

for name in (bash_profile, bashrc, bin, dir_colors, emacs.d, fonts.conf, gitconfig, gitignore, gnomerc, indent.pro, inputrc, screenrc); do
    unlink "${HOME}/.${name}"
    ln "${CWD}/$name" "${HOME}/.${name}"
done
