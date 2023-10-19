#! /bin/bash

function save_gcloud_config() {
    mkdir -p "${workspace_dir}"/.config
    cp -rf ~/.config/gcloud "${workspace_dir}"/.config/gcloud
    ln -sf ~/.config/ "${workspace_dir}"/.devcontainer/.config
}

function load_gcloud_config() {
    mkdir -p ~/.config
    cp -rf "${workspace_dir}"/.config/gcloud ~/.config/gcloud
    ln -sf ~/.config/ "${workspace_dir}"/.devcontainer/.config
}

function gaj() {
    gcloud auth activate-service-account --key-file "$1"
}

function install_cloud_sql_proxy() {
    if [ -e "${workspace_dir}"/cloud-sql-proxy ]; then
        return
    fi
    curl -o "${workspace_dir}"/cloud-sql-proxy https://storage.googleapis.com/cloud-sql-connectors/cloud-sql-proxy/v2.7.0/cloud-sql-proxy.linux.amd64
    chmod +x "${workspace_dir}"/cloud-sql-proxy
}

function start_cloud_sql_proxy() {
    if [ -z "$INSTANCE_CONNECTION_NAME" ]; then
        read -rp "SQL接続名を入力してください : " INPUT_STR
        export INSTANCE_CONNECTION_NAME=$INPUT_STR
    fi
    "${workspace_dir}"/cloud-sql-proxy "$INSTANCE_CONNECTION_NAME"
}

function gcloud_setup() {
    gcloud init
    gcloud auth list
    gcloud auth application-default login
    save_gcloud_config
    install_cloud_sql_proxy
    start_cloud_sql_proxy
}
