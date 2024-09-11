# Write a string to a file
"Hello, PowerShell!" | Out-File -FilePath ".\example.txt"

# Write system services to a file
Get-Service | Out-File -FilePath ".\services.txt"

Get-Process | Out-File -FilePath .\procsRaw.txt
Get-Process | Format-Table -Property Name, Id, CPU, Path, Modules | Out-File -FilePath .\procsNoWrap.txt
Get-Process | Format-Table -Property Name, Id, CPU, Path, Modules -Wrap | Out-File -FilePath .\procsWrap.txt