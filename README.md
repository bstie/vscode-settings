# vscode-settings

## For JavaScript (React.js + Redux + Flow)

## For Ruby on Rails

## Usefull commands

`code --list-extensions`
`code --install-extension <extension>`
`code --uninstall-extension <extension>`

## Script to automate install of multiple extensions

`EXTENSIONS=(
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
done`

(seen on: http://www.growingwiththeweb.com/2016/06/syncing-vscode-extensions.html)

