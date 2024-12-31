# RemoveBinObj.ps1 - Remove bin and obj folders from all subdirectories

# Get current directory or custom path
param (
    [string]$path = "."
)


# Create full path
$FullPath = Resolve-Path $path

Write-Host "Removing bin and obj folders from $FullPath" -ForegroundColor Cyan

# Find all bin and obj folders and remove them
Get-ChildItem -Path $FullPath -Recurse -Directory -Include "bin", "obj" | ForEach-Object {
    Write-Host "Suppression du dossier : $($_.FullName)" -ForegroundColor Yellow
    Remove-Item -Recurse -Force -Path $_.FullName
}

Write-Host "Bin and obj folders removed from $FullPath" -ForegroundColor Green
