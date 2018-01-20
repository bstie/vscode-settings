# My favorite VSCode settings for different use cases

## Table of Contents

- [JavaScript](#javascript-reactjs--redux--flow)
  - [Extensions](#extensions)
  - [Config](#config)
- [Ruby on Rails](#ruby-on-rails)
  - [Extensions](#extensions-1)
  - [Config](#config-1)
- [Useful commands](#useful-commands)
- [Automate installing extensions](automate-installing-extensions)


## JavaScript (React.js + Redux + Flow)
### Extensions  

`PKief.material-icon-theme`  
`chenxsan.vscode-standardjs`   
`eamodio.gitlens`  
`xabikos.ReactSnippets`  
`abusaidm.html-snippets`  
`CoenraadS.bracket-pair-colorizer`  
`wayou.vscode-todo-highlight`  

### Config

```javascript
{
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
}
```

## Ruby on Rails
### Extensions

`bung87.rails`  
`rebornix.Ruby`  

### Config

## Useful commands

```bash
code --list-extensions  
code --install-extension <extension>  
code --uninstall-extension <extension>  
```

## Automate installing extensions  

Script to automate install of multiple extensions

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

