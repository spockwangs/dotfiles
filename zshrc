# User specific environment variables
export EDITOR=vim
export SVN_EDITOR=vim
if [ -d "$HOME/bin" ]; then
    export PATH=$PATH:"$HOME/bin"
fi
export CLASSPATH=".:$JAVA_HOME/lib:$JAVA_HOME/lib/tools.jar"

# set colors for `man'
export LESS_TERMCAP_mb=$'\E[1;37m'
export LESS_TERMCAP_md=$'\E[1;37m'
export LESS_TERMCAP_me=$'\E[0m'
export LESS_TERMCAP_se=$'\E[0m'
export LESS_TERMCAP_so=$'\E[0;30m\E[47m'
export LESS_TERMCAP_ue=$'\E[0m'
export LESS_TERMCAP_us=$'\E[0;32m'

# User specific aliases
alias rm='rm -i'
alias cp='cp -i -v'
alias mv='mv -i -v'
if [[ "$TERM" == "dumb" ]]; then
    alias ls='ls --classify'
elif [[ "$(uname)" == "Darwin" ]]; then
    alias ls='ls -G -F'
else
    alias ls='ls --color=always --classify'
fi
alias ll='ls -lh'
alias less='less -R'
alias grep='grep --color=auto'
# Use the right emacsclient binary on MacOS.
alias em='emacsclient -n -a ""'

# allow core dump
ulimit -c unlimited

export LANG=en_US.UTF-8

# Install z.sh.
if [ -f ~/bin/z.sh ]; then
    source ~/bin/z.sh
fi

export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="robbyrussell"
plugins=(git)

source $ZSH/oh-my-zsh.sh

if [ -f ~/.zshrc.local ]; then
    source ~/.zshrc.local
fi
