# IT'S MY DOTFILES
## Usage
devcontainerに使用するイメージにgitがインストールされていることを確認してください
### Install
.devcontainer.jsonに以下を追記してください
```json
    "customizations": {
        "vscode": {
            "settings": {
                "dotfiles.repository": "https://github.com/Mkamono/dotfiles.git",
                "dotfiles.targetPath": "/workspaces/${localWorkspaceFolderBasename}/dotfiles"
            }
        }
    },
```
