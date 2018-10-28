#! /bin/sh

# set default perms
umask 022

# history options
export HISTCONTROL=ignoredups:erasedups
export HISTSIZE=10000
export HISTFILESIZE=10000

# program options
export EDITOR=vim VISUAL=vim PAGER=less PRINTER=ann104
export TERMINAL=urxvtcd
export GREP_COLORS="mt=1;33:fn=1;34:ln=1;34:bn=1;32:se=1"
export LESS="-FiMRX"

# more readable ls colors
export LS_COLORS="di=00;96:ln=00;36"

# add home bin to path
export PATH="$HOME/bin:$PATH"

export GDBMACROS="~/.gdb"

# command aliases

# aliases for ls
alias ls="LC_COLLATE=C ls --color=tty"
alias l="ls -ghlp"
alias ll="l -A"

# aliases for terminal
alias urxvt='$TERMINAL'
alias new='$TERMINAL'
alias demo='$TERMINAL -name URxvtdemo -e bash -c "bash --rcfile <(echo '"'"'. ~/.bashrc; DEMO=YES'"'"')" &'

# assorted aliases
alias grep="grep --color=auto"
alias rm="rm -I"
alias jq="jq -M"

# memes
alias wat="show_image ~/.memes/wat.jpg"

# local profile
if [ -f ~/.profile.local ]; then
    source ~/.profile.local
fi
