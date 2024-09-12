$ErrorView = "NormalView"
Get-Error

$ErrorActionPreference

Get-ChildItem -Name nosuchfile -ErrorAction 'SilentlyContinue'
Get-ChildItem -Name nosuchfile -ErrorAction 'Continue'
"none.txt", "nosuchfile" | Get-ChildItem -ErrorAction "Stop"