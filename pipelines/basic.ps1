# List all processes, select the first 5, and then display only their names
Get-Process | Select-Object -First 5 | ForEach-Object { $_.ProcessName }

# Retrieve services and sort them by their status
Get-Service | Sort-Object -Property Status

# Get services that are currently running
Get-Service | Where-Object { $_.Status -eq 'Running' }

# Get the top 5 processes and display their names and IDs
Get-Process | Select-Object -First 5 | ForEach-Object { "$($_.ProcessName) - $($_.Id)" }

# Display detailed information about running services in a list format
Get-Service | Where-Object { $_.Status -eq 'Running' } | Format-List

# Show how objects are passed to cmdlet parameters automatically
Get-Service | Stop-Service -WhatIf

# Enable pipeline tracing
$PSDefaultParameterValues['*:PSDebug'] = 1

# Run a command to see the trace
Get-Service | Where-Object { $_.Status -eq 'Stopped' }

# Disable pipeline tracing
$PSDefaultParameterValues['*:PSDebug'] = 0

# Get processes, filter for those using more than 100MB of memory, sort by memory usage, and display name and memory
Get-Process | Where-Object { $_.WorkingSet -gt 100MB } | Sort-Object -Property WorkingSet -Descending | Select-Object -Property ProcessName, WorkingSet | Format-Table -AutoSize

# Group processes by their priority class and count how many are in each group
Get-Process | Group-Object -Property PriorityClass | Select-Object -Property Name, Count

# Stop all running processes that use more than 500MB of memory, but simulate using -WhatIf
Get-Process | Where-Object { $_.WorkingSet -gt 500MB } | ForEach-Object { Stop-Process -Id $_.Id -WhatIf }

Get-process |
Get-member

(Get-Process -id 4514).PrivilegedProcessorTime

(Get-ChildItem -Path c:\ | Get-Member).TypeName | Select-Object 

Get-Process | Select-Object Name, Id

1,2,3,4,5,6,7,8 | Select-Object -First 2 -skip 1

Get-ChildItem -Path "." | Sort-Object