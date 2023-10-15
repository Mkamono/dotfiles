#! /bin/bash

source /usr/share/bash-completion/completions/git

function gd() {
    git fetch --prune
    number_of_branches=$(git branch | wc -l)
    current_branch=$(git branch --show-current)
    if [ "$number_of_branches" -eq 1 ]; then
        echo 'only one branch'
    else
        if [ "$current_branch" = 'main' ]; then
            git branch | grep -v 'main' | xargs git branch -D
        else
            git checkout main &&
                git branch | grep -v 'main' | xargs git branch -d &&
                git checkout "$current_branch"
        fi
    fi
}

alias gpr="git pull --rebase origin main"
