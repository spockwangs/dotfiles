#!/bin/bash
#
# Install scripts for Linux and macOS.

set -e
CWD=$(pwd)

mkdir -p "${HOME}/bin"
for name in bin/*; do
    ln -snf "${CWD}/${name}" "${HOME}/${name}"
done

for name in bash_profile bashrc dir_colors emacs.d fonts.conf gitconfig gitignore gnomerc indent.pro inputrc screenrc tmux.conf zshrc; do
    ln -snf "${CWD}/$name" "${HOME}/.${name}"
done

# Configure git hooks
git config core.hooksPath .githooks

# Install Symbols Nerd Font (for nerd-icons in Emacs, etc.)
NERD_FONT_URL="https://github.com/ryanoasis/nerd-fonts/releases/download/v3.4.0/NerdFontsSymbolsOnly.zip"

case "$(uname)" in
    Darwin)
        NERD_FONT_DIR="${HOME}/Library/Fonts"
        ;;
    Linux)
        NERD_FONT_DIR="${HOME}/.fonts"
        ;;
    *)
        echo "Skipping Nerd Font install: unsupported OS $(uname)" >&2
        NERD_FONT_DIR=
        ;;
esac

if [ -n "${NERD_FONT_DIR}" ] && [ ! -f "${NERD_FONT_DIR}/SymbolsNerdFont-Regular.ttf" ]; then
    NERD_FONT_ZIP="$(mktemp /tmp/NerdFontsSymbolsOnly.XXXXXX.zip)"
    trap 'rm -f "${NERD_FONT_ZIP}"' EXIT

    if command -v curl >/dev/null 2>&1; then
        curl -fsSL -o "${NERD_FONT_ZIP}" "${NERD_FONT_URL}"
    elif command -v wget >/dev/null 2>&1; then
        wget -q -O "${NERD_FONT_ZIP}" "${NERD_FONT_URL}"
    else
        echo "curl or wget is required to download Nerd Fonts" >&2
        exit 1
    fi

    mkdir -p "${NERD_FONT_DIR}"
    unzip -o -j "${NERD_FONT_ZIP}" "*.ttf" -d "${NERD_FONT_DIR}"

    if [ "$(uname)" = Linux ]; then
        FONTCONFIG_DIR="${HOME}/.config/fontconfig/conf.d"
        mkdir -p "${FONTCONFIG_DIR}"
        unzip -o -j "${NERD_FONT_ZIP}" "10-nerd-font-symbols.conf" -d "${FONTCONFIG_DIR}"
        if command -v fc-cache >/dev/null 2>&1; then
            fc-cache -f "${NERD_FONT_DIR}"
        fi
    fi

    rm -f "${NERD_FONT_ZIP}"
fi
