#!/usr/bin/env bash


CURRENT_DIR="\[\e[34m\]\W"
BRANCH="\$(__git_ps1 '\[\e[1m\e[31m\] ⎇  \[\e[0m\e[32m\]%s')"
PROMPT_SYMBOL="\[\e[1m\e[31m\]➤"

#export PS1="$CURRENT_DIR$BRANCH $PROMPT_SYMBOL \[\e[0m\]"
export PS1='\[\e[34m\]\W $(__git_ps1 "\[\e[1m\e[31m: \]\[\e[0m\e[32m\]%s") \[\e[1m\e[31m\]> \[\e[0m\]'
