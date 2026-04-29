if [ -e ~/.bashrc ]; then
    . ~/.bashrc
fi
<<<<<<< HEAD
=======

. "$HOME/.local/bin/env"

if [[ ":$PATH:" != *":$HOME/.local/bin:"* ]]; then
	export PATH="$HOME/.local/bin:$PATH"
fi
>>>>>>> d2334a7fee1fae75b0602367675679cd57168c75
