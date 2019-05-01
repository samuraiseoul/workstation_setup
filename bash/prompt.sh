#!/usr/bin/env bash

# from http://ezprompt.net/

# get current branch in git repo
function parse_git_branch() {
	BRANCH=`git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/\1/'`
	if [ ! "${BRANCH}" == "" ]
	then
		echo -e "\e[1m\e[31m⎇ \e[0m\e[32m${BRANCH}"
	else
		echo ""
	fi
}

CURRENT_DIR="\e[34m\w"
BRANCH="\$(parse_git_branch)"
PROMPT_SYMBOL="\e[1m\e[31m➤"

export PS1="$CURRENT_DIR$BRANCH $PROMPT_SYMBOL \e[0m"