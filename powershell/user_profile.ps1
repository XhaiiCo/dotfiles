
# Load prompt config
Import-Module posh-git
$omp_config = Join-Path $PSScriptRoot ".\custom_prompt.json"
oh-my-posh --init --shell pwsh --config $omp_config | Invoke-Expression

# Icons
Import-Module -Name Terminal-Icons

# PSReadLine
Set-PSReadLineOption -EditMode Emacs
Set-PSReadLineOption -BellStyle None
Set-PSReadLineKeyHandler -Chord 'Ctrl+d' -Function DeleteChar
Set-PSReadLineOption -PredictionSource History

# Alias
Set-Alias vim nvim
Set-Alias ll ls 
Set-Alias g git
Set-Alias grep findstr
