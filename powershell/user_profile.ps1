function cbo {
    param([string]$Path = ".")

    & "D:\scripts\RemoveBinObj.ps1" -Path $Path
  }

Set-Alias vim nvim
Set-Alias ll ls 
Set-Alias g git
Set-Alias grep findstr
Set-Alias lg lazygit.exe

# Load prompt config
$omp_config = # Path to your json config file
oh-my-posh --init --shell pwsh --config $omp_config | Invoke-Expression
