# 1 Install powershell by microsoft

# 2 Make a user profile and set command aliases
## in ~

mkdir .config/powershell

nvim .\.config\powershell\user_profile.ps1

inside :
```
# Alias
Set-Alias vim nvim
Set-Alias ll ls
Set-Alias g git
Set-Alias grep findstr
```

nvim $PROFILE.CurrentUserCurrentHost

inside :
```
. $env:USERPROFILE\.config\powershell\user_profile.ps1
```

# 3 Install Oh My Posh
need to install oh my posh then:

vim .\.config\powershell\custom_prompt.json

inside :
```
{
  "$schema": "https://raw.githubusercontent.com/JanDeDobbeleer/oh-my-posh/main/themes/schema.json",
  "final_space": false,
  "osc99": true,
  "blocks": [
    {
      "type": "prompt",
      "alignment": "left",
      "segments": [
        {
          "type": "shell",
          "style": "diamond",
          "leading_diamond": "╭─",
          "trailing_diamond": "",
          "foreground": "#ffffff",
          "background": "#0077c2",
          "properties": {
          }
        },
        {
          "type": "root",
          "style": "diamond",
          "leading_diamond": "",
          "trailing_diamond": "",
          "foreground": "#FFFB38",
          "background": "#ef5350",
          "properties": {
            "root_icon": "\uf292",
            "prefix": "<parentBackground>\uE0B0</> "
          }
        },
        {
          "type": "path",
          "style": "powerline",
          "powerline_symbol": "\uE0B0",
          "foreground": "#E4E4E4",
          "background": "#444444",
          "properties": {
            "style": "full",
            "enable_hyperlink": true
          }
        },
        {
          "type": "git",
          "style": "powerline",
          "powerline_symbol": "\uE0B0",
          "foreground": "#011627",
          "background": "#FFFB38",
          "background_templates": [
            "{{ if or (.Working.Changed) (.Staging.Changed) }}#ffeb95{{ end }}",
            "{{ if and (gt .Ahead 0) (gt .Behind 0) }}#c5e478{{ end }}",
            "{{ if gt .Ahead 0 }}#C792EA{{ end }}",
            "{{ if gt .Behind 0 }}#C792EA{{ end }}"
          ],
          "properties": {
            "branch_icon": "\ue725 ",
            "fetch_status": true,
            "fetch_upstream_icon": true,
            "template": "{{ .HEAD }} {{ if .Working.Changed }}{{ .Working.String }}{{ end }}{{ if and (.Working.Changed) (.Staging.Changed) }} |{{ end }}{{ if .Staging.Changed }}<#ef5350> \uF046 {{ .Staging.String }}</>{{ end }}"
          }
        }
      ]
    },
    {
      "type": "prompt",
      "alignment": "right",
      "segments": [
        {
          "type": "node",
          "style": "diamond",
          "leading_diamond": " \uE0B6",
          "trailing_diamond": "\uE0B4",
          "foreground": "#3C873A",
          "background": "#303030",
          "properties": {
            "prefix": "\uE718 ",
            "postfix": "",
            "display_package_manager": true,
            "yarn_icon": " <#348cba></>",
            "npm_icon": " <#cc3a3a></> "
          }
        },
        {
          "type": "time",
          "style": "diamond",
          "invert_powerline": true,
          "leading_diamond": " \uE0B6",
          "trailing_diamond": "\uE0B4",
          "background": "#40c4ff",
          "foreground": "#ffffff",
          "properties": {
            "prefix": " \uf5ef ",
            "postfix": " "
        }
        }
      ]
    },
    {
      "type": "prompt",
      "alignment": "left",
      "newline": true,
      "segments": [
        {
          "type": "text",
          "style": "plain",
          "foreground": "#21c7c7",
          "properties": {
            "prefix": "",
            "postfix": "",
            "text": "╰─"
          }
        },
        {
          "type": "exit",
          "style": "plain",
          "foreground": "#e0f8ff",
          "properties": {
            "prefix": "\u276F",
            "display_exit_code": false,
            "always_enabled": true,
            "error_color": "#ef5350"
          }
        }
      ]
    }
  ]
}
```

vim .\.config\powershell\user_profile.ps1

add:
```
Import-Module posh-git
$omp_config = Join-Path $PSScriptRoot ".\custom_prompt.json"
oh-my-posh --init --shell pwsh --config $omp_config | Invoke-Expression
```

# 4 Install Terminal Icons

Install-Module -Name Terminal-Icons -Repository PSGallery -Force

vim .\.config\powershell\user_profile.ps1

add: 
```
Import-Module Terminal-Icons
```

# 5 Install PSReadLine - Autocompletion

Install-Module -Name PSReadLine -Scope CurrentUser -Force -SkipPublisherCheck

Set-PSReadLineOption -PredictionSource History
Set-PSReadLineOption -PredictionViewStyle ListView

vim .\.config\powershell\user_profile.ps1

add: 
```
# PSReadLine
Set-PSReadLineOption -EditMode Emacs
Set-PSReadLineOption -BellStyle None
Set-PSReadLineKeyHandler -Chord 'Ctrl+d' -Function DeleteChar
Set-PSReadLineOption -PredictionSource History
```
