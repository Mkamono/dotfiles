# IT'S MY DOTFILES
## Usage
### Install
.devcontainer.jsonに以下を追記してください
```json
    "customizations": {
        "vscode": {
            "settings": {
                "dotfiles.repository": "https://github.com/Mkamono/dotfiles.git",
                "dotfiles.targetPath": "./workspaces/${localWorkspaceFolderBasename}/dotfiles"
            }
        }
    },
```
