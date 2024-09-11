Get-Service | Sort-Object -Property Status | Select-Object -First 5
Get-Process | Export-Csv -Path ".\processes.csv" -NoTypeInformation
Get-Service | Where-Object { $_.Status -eq 'Running'}