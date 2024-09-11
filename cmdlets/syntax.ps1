Get-Process
Get-Process -Name chrome
Get-Process | Out-File ".\processes.txt"
Get-Help Get-Random
$env:PSModulePath -split ";"
Get-Command *module*
Get-Command *module* -ListImported
Get-InstalledModule
Get-Command -Module PowerShellGet
Install-Module psmath