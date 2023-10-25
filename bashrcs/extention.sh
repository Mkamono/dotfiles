#! /bin/bash

function ext() {
    cd "$dotfiles_dir" || return
    path=".extensions.$1[]"
    for item in $(jq -r ${path} extensions.json); do
        code --install-extension "$item"
    done
    cd - || return
}
