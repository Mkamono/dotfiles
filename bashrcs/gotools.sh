#! /bin/bash

function install_go_tools() {
    cd "${workspace_dir}" || return
    go install golang.org/x/tools/gopls@latest
    go install github.com/cweill/gotests/gotests@latest
    go install github.com/fatih/gomodifytags@latest
    go install github.com/josharian/impl@latest
    go install github.com/haya14busa/goplay/cmd/goplay@latest
    go install github.com/go-delve/delve/cmd/dlv@latest
    go install honnef.co/go/tools/cmd/staticcheck@latest
    cd - >/dev/null || return
}
