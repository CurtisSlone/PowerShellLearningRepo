# Create and manipulate JSON data
$userData = @(
    @{ Name = "Alice"; Age = 30; Role = "Developer" },
    @{ Name = "Bob"; Age = 25; Role = "Analyst" }
)

# Convert to JSON and save to a file
$userData | ConvertTo-Json | Out-File -FilePath ".\users.json"

# Read the JSON file and manipulate the data
$users = Get-Content -Path ".\users.json" | ConvertFrom-Json
$users[0].Age = 31

# Write updated data back to the file
$users | ConvertTo-Json | Out-File -FilePath ".\users.json"
