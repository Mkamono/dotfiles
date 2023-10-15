#! /bin/bash
cd ..

# dotfiles for devcontainer, bash
dotfiles_dir="./dotfiles"

apt install -y git exa curl

# remote container settingsのリンクを作成
touch ~/.vscode-server/data/Machine/settings.json
cp "$dotfiles_dir"/.vscode/settings.json ~/.vscode-server/data/Machine/settings.json
mkdir -p ./.vscode
ln -sf ~/.vscode-server/data/Machine/settings.json ./.vscode/remote-settings.json

# git-promptのダウンロード
curl -o ~/.git-prompt.sh \
    https://raw.githubusercontent.com/git/git/master/contrib/completion/git-prompt.sh
# [bashrc] source ~/.git-prompt.sh

# .bashrcのリンクを作成
rm ./.devcontainer/.bashrc ~/.bashrc
ln -sf ~/.bashrc ./.devcontainer/.bashrc

cat "$dotfiles_dir"/bashrcs/* >>~/.bashrc

source ~/.bashrc

# .gitignoreでdotfilesを無視
if ! test -f ./.gitignore; then
    cat "$dotfiles_dir"/ignorelist.txt >>./.gitignore
fi
