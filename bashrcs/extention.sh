#! /bin/bash

function cmext() {
    code --install-extension ms-azuretools.vscode-docker
    code --install-extension GitHub.copilot
    code --install-extension GitHub.copilot-chat
    code --install-extension cweijan.vscode-database-client2
    code --install-extension rangav.vscode-thunder-client
    code --install-extension streetsidesoftware.code-spell-checker
    code --install-extension eamodio.gitlens
    code --install-extension GitHub.vscode-pull-request-github
    code --install-extension redjue.git-commit-plugin
    code --install-extension mhutchie.git-graph
    code --install-extension usernamehw.errorlens
}

function pyext() {
    code --install-extension ms-python.python
    code --install-extension ms-toolsai.jupyter
    code --install-extension njpwerner.autodocstring
    code --install-extension ms-python.black-formatter
    code --install-extension ms-python.isort
}

function shext() {
    code --install-extension timonwong.shellcheck
    code --install-extension foxundermoon.shell-format
}
