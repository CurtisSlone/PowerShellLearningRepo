$cred = Get-Credential
New-PSSession -ComputerName localhost -Authentication Negotiate -Credential $cred
Get-PSSession
Enter-PsSession -ComputerName localhost -Credential $cred
New-PSSession -ComputerName localhost -Authentication Negotiate -Credential $cred | Enter-PsSession