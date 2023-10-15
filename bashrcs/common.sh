#! /bin/bash

alias c="clear"
alias e="exit"
alias ..="cd .."
alias ...="cd ../.."
alias .2="cd ../../"
alias .3="cd ../../../"
alias .4="cd ../../../../"
alias .5="cd ../../../../../"

alias ls="exa"
alias la="exa -a"
alias ll="exa -l"
alias tr="exa -T"
alias ta="exa -Ta"
alias rmrf="rm -rfi"

function reset-dotfiles() {
    rm  ./.vscode/remote-settings.json ./.devcontainer/.bashrc
    rm -rf ./dotfiles
}
