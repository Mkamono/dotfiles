#! /bin/bash

if [ ! "${REMOTE_CONTAINERS}" ]; then
    echo "not remote container"
    exit 0
fi

workspace_dir=$(ls -d /workspaces/*)
dotfiles_dir="${workspace_dir}/dotfiles"
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
alias xx="chmod +x"

function reset-dotfiles() {
    rm "${workspace_dir}"/.vscode/remote-settings.json "${workspace_dir}"/.devcontainer/.bashrc
    rm -rf "${dotfiles_dir}"
}
