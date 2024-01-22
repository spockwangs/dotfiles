#!/bin/bash
#
# Install scripts for Linux.

set -e
CWD=$(pwd)

for name in bin; do
    ln -f -s "${CWD}/${name}" "${HOME}/${name}"
done

for name in bash_profile bashrc dir_colors emacs.d fonts.conf gitconfig gitignore gnomerc indent.pro inputrc screenrc; do
    ln -f -s "${CWD}/$name" "${HOME}/.${name}"
done
