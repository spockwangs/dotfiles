#!/bin/bash
#
# Install scripts for Linux.

set -e
CWD=$(pwd)

mkdir -p "${HOME}/bin"
for name in bin/*; do
    ln -snf "${CWD}/${name}" "${HOME}/${name}"
done

for name in bash_profile bashrc dir_colors emacs.d fonts.conf gitconfig gitignore gnomerc indent.pro inputrc screenrc tmux.conf; do
    ln -snf "${CWD}/$name" "${HOME}/.${name}"
done
