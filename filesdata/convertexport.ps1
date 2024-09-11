# Export process details to a CSV file
# Get-Process | Export-Csv -Path ".\processes.csv" -NoTypeInformation
# $procs = Import-Csv processes.csv
# $procs | Get-Member
# $procs.name

# # Convert process details to JSON
# Get-Process | Select-Object Name, Id | ConvertTo-Json

# # Convert JSON back to PowerShell objects
# $json = Get-Process | Select-Object Name, Id | ConvertTo-Json
# $json | ConvertFrom-Json

# Get-Process w* | ConvertTo-Csv | Out-File .\ProcessesConvertTo.csv
# Get-Process | ConvertTo-Csv -delimiter ';'| Out-File .\ProcessesConvertTo.csv
Get-Date |Export-Clixml -Path .\date.xml
Get-Date | ConvertTo-Html | Out-File -FilePath .\date.html