function Get-Files {
    param([string]$Path)
    Get-ChildItem -Path $Path
}

Get-Files -Path "."