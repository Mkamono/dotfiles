#! /bin/bash

source ~/.git-prompt.sh
PS1='\[\e[32m\]\w\[\e[1;36m\]$(__git_ps1 " (%s)")\[\e[0m\] > '
