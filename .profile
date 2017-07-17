#! /bin/sh

# set default perms
umask 022

# history options
export HISTCONTROL=ignoredups:erasedups
export HISTSIZE=10000
export HISTFILESIZE=10000

# program options
export EDITOR=vim VISUAL=vim PAGER=less PRINTER=ann104
export GREP_OPTIONS="--color=auto"
export GREP_COLORS="mt=1;33:fn=1;34:ln=1;34:bn=1;32:se=1"
export LESS="-isM"

# more readable ls colors
export LS_COLORS="di=00;96:ln=00;36"

# command aliases
alias l="LC_COLLATE=C ls --color=always -lp"
alias ll="l -a"
alias la="ll"

alias urxvt="urxvtcd"
alias new="urxvtcd"
alias demo="urxvtcd -name URxvtdemo -e bash -c '"'bash --rcfile <(echo ". ~/.bashrc; DEMO=YES")'"' &"

alias rm="rm -I"
alias jq="jq -M"
