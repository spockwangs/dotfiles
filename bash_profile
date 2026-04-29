if [ -e ~/.bashrc ]; then
    . ~/.bashrc
fi

. "$HOME/.local/bin/env"

if [[ ":$PATH:" != *":$HOME/.local/bin:"* ]]; then
	export PATH="$HOME/.local/bin:$PATH"
fi
