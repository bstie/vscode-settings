# My favorite VSCode settings for different use cases

## 1. For JavaScript (React.js + Redux + Flow)
### 1.1 Extensions
`PKief.material-icon-theme`  
`chenxsan.vscode-standardjs`   
`eamodio.gitlens`  
`xabikos.ReactSnippets`  
`minhthai.vscode-todo-parser`    

### 1.2 Config

<details>
<summary>Show full config</summary>  

    // General 
    "window.zoomLevel": 1, // for WQHD (2560x1440)  

    // Editor  
    "editor.tabSize": 2,  

    // Theme  
    "workbench.iconTheme": "material-icon-theme",  

    // Enable multiple cursors  
    "editor.multiCursorModifier": "ctrlCmd",  

    // JavaScript Linter  
    "standard.enable": true,  
    "standard.autoFixOnSave": true,  

    // TODOs  
    "TodoParser": {  
        "exclude": ["cpp", "c"],  
        "include": ["js"],  
        "folderExclude": ["node_modules", ".vscode"],  
        //"only": ["sub-folder/sub-sub-folder"],  
        "showInProblems": false,  
        "markers": ["TODO:", "NOTE:", "REMINDER:", ["FIXME", "Warning"]],  
        "autoDefaultMarkers": true  
    },  
    
    // GitLens  
    "gitlens.advanced.messages": {  
        "suppressCommitHasNoPreviousCommitWarning": false,  
        "suppressCommitNotFoundWarning": false,  
        "suppressFileNotUnderSourceControlWarning": false,  
        "suppressGitVersionWarning": false,  
        "suppressLineUncommittedWarning": false,  
        "suppressNoRepositoryWarning": false,  
        "suppressUpdateNotice": false,  
        "suppressWelcomeNotice": true  
    }  

</details>

## 2. For Ruby on Rails
### 2.1 Extensions
### 2.2 Config

## 3. Usefull commands

```bash
code --list-extensions  
code --install-extension <extension>  
code --uninstall-extension <extension>  
```

## 4. Script to automate install of multiple extensions

```bash
EXTENSIONS=(
  "cssho.vscode-svgviewer" \
  "dbaeumer.vscode-eslint" \
  "EditorConfig.EditorConfig" \
  "ryzngard.vscode-header-source" \
  "spywhere.guides" \
  "Tyriar.sort-lines" \
  "Tyriar.lorem-ipsum" \
  "waderyan.gitblame"
)

for VARIANT in "code" \
               "code-insiders"
do
  if hash $VARIANT 2>/dev/null; then
    echo "Installing extensions for $VARIANT"
    for EXTENSION in ${EXTENSIONS[@]}
    do
      $VARIANT --install-extension $EXTENSION
    done
  fi
done
```

(seen on: http://www.growingwiththeweb.com/2016/06/syncing-vscode-extensions.html)

