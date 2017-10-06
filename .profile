#! /bin/sh

# set default perms
umask 022

# history options
export HISTCONTROL=ignoredups:erasedups
export HISTSIZE=10000
export HISTFILESIZE=10000

# program options
export EDITOR=vim VISUAL=vim PAGER=less PRINTER=ann104
export GREP_COLORS="mt=1;33:fn=1;34:ln=1;34:bn=1;32:se=1"
export LESS="-isMR"

# more readable ls colors
export LS_COLORS="di=00;96:ln=00;36"

# add home bin to path
export PATH="~/bin:$PATH"

# command aliases
alias grep="grep --color=auto"

alias l="LC_COLLATE=C ls --color=always -lp"
alias ll="l -a"
alias la="ll"

alias urxvt="urxvtcd"
alias new="urxvtcd"
alias demo="urxvtcd -name URxvtdemo -e bash -c '"'bash --rcfile <(echo ". ~/.bashrc; DEMO=YES")'"' &"

alias rm="rm -I"
alias jq="jq -M"

showimage() {
    FULLNAME=$(readlink -f "$1")

    WINSIZE=($(xwininfo -id $WINDOWID | grep -e 'Width\|Height' | tail -n2 | tr -s ' ' | cut -d' ' -f3))
    IMSIZE=($(identify -format '%w %h' "$FULLNAME"))

    (( WINSIZE[1] = WINSIZE[1] - 40 ))

    if [[ $IMSIZE[1] -gt $WINSIZE[1] ]]; then
        (( IMSIZE[2] = $IMSIZE[2] * $WINSIZE[1] / $IMSIZE[1] ))
        IMSIZE[1]=$WINSIZE[1]
    fi

    if [[ $IMSIZE[2] -gt $WINSIZE[2] ]]; then
        (( IMSIZE[1] = $IMSIZE[1] * $WINSIZE[2] / $IMSIZE[2] ))
        IMSIZE[2]=$WINSIZE[2]
    fi

    tput smcup
    tput cup $(tput lines) 0
    echo "0;1;0;0;$IMSIZE[1];$IMSIZE[2];;;;;$FULLNAME\n4;\n3;" | /usr/lib/w3m/w3mimgdisplay
    read -k1
    clear
    tput rmcup
}

alias wat="showimage ~/.memes/wat.jpg"
