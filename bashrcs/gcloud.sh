#! /bin/bash

alias gi="gcloud init"
function gaj() {
    gcloud auth activate-service-account --key-file "$1"
}
alias gal="gcloud auth list"

function save_gcloud_config() {
    cp -r ~/.config/gcloud "${workspace_dir}"/.config/gcloud
}

function load_gcloud_config() {
    cp -r "${workspace_dir}"/.config/gcloud ~/.config/gcloud
}
