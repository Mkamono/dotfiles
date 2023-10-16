#! /bin/bash

source ~/.git-prompt.sh
PS1="\n\[\e[35m\]\w\[\e[1;36m\]$(__git_ps1 " (%s)")\[\e[0m\] > "
