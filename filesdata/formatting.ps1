# List processes and format as a table
Get-Process | Select-Object -First 6 | Format-Table Name, Id

# Display process names in a wide format
Get-Process | Select-Object -First 6 | Format-Wide Name -Column 3

Get-Process | Select-Object -First 6 | Format-List

Get-Process pwsh | Format-List *
Get-Process pwsh | Format-List -Property Name, Id, CPU, Responding
