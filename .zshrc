# If you come from bash you might have to change your $PATH.
export PATH=$HOME/.config/scripts:$PATH

# Path to your oh-my-zsh installation.
export ZSH=/usr/share/oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
# ZSH_THEME="powerlevel9k/powerlevel9k"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git zsh-syntax-highlighting zsh-autosuggestions)

[[ $- == *i* ]] && source $ZSH/oh-my-zsh.sh 
[[ $- == *i* ]] && source $HOME/.profile

# User configuration

unsetopt AUTO_CD

trap "echo exit; exit" EXIT
alias exit="trap - EXIT; exit"

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Keybinds
_kanull() { }

zle -N _kanull
bindkey '^[[24~' _kanull
bindkey '^[[25~' _kanull

# source prompt
source ~/.prompt

# ZSH syntax highlighting
typeset -A ZSH_HIGHLIGHT_STYLES

ZSH_HIGHLIGHT_STYLES[reserved-word]='fg=11,bold'
ZSH_HIGHLIGHT_STYLES[precommand]='fg=123'

ZSH_HIGHLIGHT_STYLES[alias]='fg=123,bold'
ZSH_HIGHLIGHT_STYLES[builtin]='fg=123,bold'
ZSH_HIGHLIGHT_STYLES[command]='fg=123,bold'
ZSH_HIGHLIGHT_STYLES[function]='fg=123,bold'
ZSH_HIGHLIGHT_STYLES[arg0]='fg=123,bold'

ZSH_HIGHLIGHT_STYLES[single-hyphen-option]='fg=11,bold'
ZSH_HIGHLIGHT_STYLES[double-hyphen-option]='fg=11,bold'

ZSH_HIGHLIGHT_STYLES[path]='fg=14'

ZSH_HIGHLIGHT_STYLES[globbing]='fg=13'
ZSH_HIGHLIGHT_STYLES[history-expansion]='fg=13'

ZSH_HIGHLIGHT_STYLES[dollar-double-quoted-argument]='fg=83'
ZSH_HIGHLIGHT_STYLES[back-double-quoted-argument]='fg=83'
ZSH_HIGHLIGHT_STYLES[back-dollar-quoted-arugment]='fg=83'

ZSH_HIGHLIGHT_STYLES[assing]='fg=14,bold'

ZSH_HIGHLIGHT_STYLES[comment]='fg=7'

# autosuggest
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=7'

# Powerlevel9k
# POWERLEVEL9K_CUSTOM_HOST="echo %m"
# POWERLEVEL9K_CUSTOM_HOST_FOREGROUND="254"
# POWERLEVEL9K_CUSTOM_HOST_BACKGROUND="32"
# 
# POWERLEVEL9K_DIR_HOME_FOREGROUND="255"
# POWERLEVEL9K_DIR_HOME_BACKGROUND="25"
# POWERLEVEL9K_DIR_HOME_SUBFOLDER_FOREGROUND="255"
# POWERLEVEL9K_DIR_HOME_SUBFOLDER_BACKGROUND="25"
# POWERLEVEL9K_DIR_DEFAULT_FOREGROUND="white"
# POWERLEVEL9K_DIR_DEFAULT_BACKGROUND="25"
# 
# POWERLEVEL9K_STATUS_OK_FOREGROUND="253"
# POWERLEVEL9K_STATUS_OK_BACKGROUND="242"
# POWERLEVEL9K_STATUS_ERROR_FOREGROUND="red"
# POWERLEVEL9K_STATUS_ERROR_BACKGROUND="234"
# 
# POWERLEVEL9K_HISTORY_BACKGROUND="245"

# POWERLEVEL9K_RAM_ICON=""
# POWERLEVEL9K_RAM_BACKGROUND="247"
# POWERLEVEL9K_RAM_ELEMENTS=(ram_free)

# POWERLEVEL9K_TIME_FOREGROUND="black"
# POWERLEVEL9K_TIME_BACKGROUND="250"

# POWERLEVEL9K_BATTERY_ICON=""
# POWERLEVEL9K_BATTERY_CHARGED_FOREGROUND="black"
# POWERLEVEL9K_BATTERY_CHARGED_BACKGROUND="254"
# POWERLEVEL9K_BATTERY_CHARGING_FOREGROUND="black"
# POWERLEVEL9K_BATTERY_CHARGING_BACKGROUND="194"
# POWERLEVEL9K_BATTERY_DISCONNECTED_FOREGROUND="black"
# POWERLEVEL9K_BATTERY_DISCONNECTED_BACKGROUND="254"

# POWERLEVEL9K_VCS_GIT_HOOKS=(vcs-detect-changes git-remotebranch git-tagname)
# POWERLEVEL9K_HIDE_BRANCH_ICON='true'
# 
# POWERLEVEL9K_SHORTEN_DIR_LENGTH=2
# 
# POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(custom_host dir vcs)
# POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status time)

source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
