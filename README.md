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
`capaj.vscode-standardjs-snippets`  
`eamodio.gitlens`  
`xabikos.ReactSnippets`  
`abusaidm.html-snippets`  
`CoenraadS.bracket-pair-colorizer`  
`wayou.vscode-todo-highlight`  
`robinbentley.sass-indented`  
`gcazaciuc.vscode-flow-ide`  
`NuclleaR.vscode-extension-auto-import`  
  
To install all JavaScript extensions clone this repo and run:

```bash
ruby install_extensions.rb js
```
or:
```bash
./install_js_extensions.sh
```  

### Config

```javascript
{
    // for WQHD (2560x1440)
    "editor.fontSize": 16,
    "terminal.integrated.fontSize": 16,
    "markdown.preview.fontSize": 16,
    "window.zoomLevel": 1.1,

    // Editor
    "editor.tabSize": 2,

    // Insert spaces when pressing Tab. This setting is overriden
    // based on the file contents when `editor.detectIndentation` is true.
    "editor.insertSpaces": true,

    // When opening a file, `editor.tabSize` and `editor.insertSpaces`
    // will be detected based on the file contents.
    "editor.detectIndentation": false,

    // Add final newline to each file
    "files.insertFinalNewline": true,

    // Trim trailing white spaces on each line (but don´t trim in markdown files)
    "files.trimTrailingWhitespace": true,  
    "[markdown]": {
      "files.trimTrailingWhitespace": false
    },

    // Theme
    "workbench.iconTheme": "material-icon-theme",

    // Enable multiple cursors
    "editor.multiCursorModifier": "ctrlCmd",

    // JavaScript Linter
    "standard.enable": true,
    "standard.autoFixOnSave": true,
    "standard.options": {
      "parser": "babel-eslint",
      "plugins": [
        "flowtype"
      ],
      "ignore": [
        "/flow-typed"
      ],
      "globals": [
        "it",
        "expect",
        "beforeEach",
        "describe",
        "jest",
        "fetch",
        "URL"
      ]
    },
    
    // disable the javascript validation by vscode because we use standard
    "javascript.validate.enable": false,

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
    },

    // IntelliSense (Autocompletion) for html in JavaScript files (.js/.jsx)
    "emmet.includeLanguages": {
      "javascript": "html"
    }
}
```

## Ruby on Rails
### Extensions
  
`bung87.rails`  
`rebornix.Ruby`  
  
To install the rails related extensions clone this repo and run:
  
```bash  
ruby install_extensions.rb rails  
```  
or:  
```bash  
./install_rails_extensions.sh  
```  

### Config

## Useful commands

```bash
code --list-extensions
code --install-extension <extension>
code --uninstall-extension <extension>
```

## Automate installing extensions

Shell script to automate install of multiple extensions (without ruby...)

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

