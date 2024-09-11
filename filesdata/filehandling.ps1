# Read file contents
Get-Content -Path ".\example.txt"

# Append text to a file
"Appended line" | Add-Content -Path ".\example.txt"

# Copy a file
Copy-Item -Path ".\example.txt" -Destination ".\example_copy.txt"

# Move a file
Move-Item -Path ".\example_copy.txt" -Destination ".\example_moved.txt"

# Delete a file
Remove-Item -Path ".\example_moved.txt"

# Get file metadata
Get-Item -Path ".\example.txt" | Select-Object Name, Length, LastWriteTime

# Get-PSProvider
# Set-Location Env:
# Get-ChildItem

Invoke-Item -Path ".\date.xml"