#! /bin/bash

source ~/.profile

# LS Colors
test -r .dir_colors && eval "$(dircolors .dir_colors)"

# Interactive Prompt
_P_DIVIDER="$(printf "\xEE\x82\xB0")"
_P_CHECKMARK="$(printf "\xE2\x9C\x94")"
_P_CROSS="$(printf "\xE2\x9C\x96")"

_P_COLOR_TEXT="\[$(tput setaf 7)\]"

_P_COLOR_F_SUCCESS="\[$(tput setaf 2)\]"
_P_COLOR_B_SUCCESS="\[$(tput setab 2)\]"
_P_COLOR_F_FAIL="\[$(tput setaf 1)\]"
_P_COLOR_B_FAIL="\[$(tput setab 1)\]"

_P_COLOR_F_HOST="\[$(tput setaf 6)\]"
_P_COLOR_B_HOST="\[$(tput setab 6)\]"
_P_COLOR_F_USER="\[$(tput setaf 3)\]"
_P_COLOR_B_USER="\[$(tput setab 3)\]"
_P_COLOR_F_PATH="\[$(tput setaf 5)\]"
_P_COLOR_B_PATH="\[$(tput setab 5)\]"

_P_COLOR_RESET="\[$(tput sgr0)\]"

_prompt () {
	EXIT=$?

	if [[ $EXIT == 0 ]]; then
		_P_COLOR_F_STATUS="$_P_COLOR_F_SUCCESS"
		_P_COLOR_B_STATUS="$_P_COLOR_B_SUCCESS"
		_P_STATUS="$_P_CHECKMARK"
	else
		_P_COLOR_F_STATUS="$_P_COLOR_F_FAIL"
		_P_COLOR_B_STATUS="$_P_COLOR_B_FAIL"
		_P_STATUS="$_P_CROSS"
	fi

	PS1="$_P_COLOR_B_STATUS\
$_P_COLOR_TEXT $_P_STATUS $_P_COLOR_F_STATUS$_P_COLOR_B_HOST$_P_DIVIDER\
$_P_COLOR_TEXT \h $_P_COLOR_F_HOST$_P_COLOR_B_USER$_P_DIVIDER\
$_P_COLOR_TEXT \u $_P_COLOR_F_USER$_P_COLOR_B_PATH$_P_DIVIDER\
$_P_COLOR_TEXT \W $_P_COLOR_RESET$_P_COLOR_F_PATH$_P_DIVIDER\
$_P_COLOR_RESET "

	return $EXIT
}

PROMPT_COMMAND=_prompt
