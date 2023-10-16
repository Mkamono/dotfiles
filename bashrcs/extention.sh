#! /bin/bash

function cmext() {
    cd "${dotfiles_dir}" || return
    for item in $(jq -r '.extensions.common[]' extensions.json); do
        code --install-extension "$item"
    done
    cd -
}

function pyext() {
    cd "${dotfiles_dir}" || return
    for item in $(jq -r '.extensions.python[]' extensions.json); do
        code --install-extension "$item"
    done
    cd -
}

function shext() {
    cd "${dotfiles_dir}" || return
    for item in $(jq -r '.extensions.shell[]' extensions.json); do
        code --install-extension "$item"
    done
    cd -
}
