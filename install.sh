#! /bin/bash
cd ..

# dotfiles for devcontainer, bash
workspace_dir=$(ls -d /workspaces/*)
dotfiles_dir="${workspace_dir}/dotfiles"
apt update
apt install -y git exa curl jq

# remote container settingsのリンクを作成
touch ~/.vscode-server/data/Machine/settings.json
cp "${dotfiles_dir}"/.vscode/settings.json ~/.vscode-server/data/Machine/settings.json
mkdir -p "${workspace_dir}"/.vscode
ln -sf ~/.vscode-server/data/Machine/settings.json "${workspace_dir}"/.vscode/remote-settings.json

# git-promptのダウンロード
curl -o ~/.git-prompt.sh \
    https://raw.githubusercontent.com/git/git/master/contrib/completion/git-prompt.sh
# [bashrc] source ~/.git-prompt.sh

curl -o ~/.git-completion.sh \
    https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.bash
# [bashrc] source ~/.git-completion.sh

# .bashrcのリンクを作成
rm "${workspace_dir}"/.devcontainer/.bashrc ~/.bashrc
ln -sf ~/.bashrc "${workspace_dir}"/.devcontainer/.bashrc

cat "${dotfiles_dir}"/bashrcs/* >>~/.bashrc

source ~/.bashrc

# .gitignoreでdotfilesを無視
if ! test -f "${workspace_dir}"/.gitignore; then
    cat "${dotfiles_dir}"/ignorelist.txt >>"${workspace_dir}"/.gitignore
fi
