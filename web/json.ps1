# Fetching JSON data from a public API
$response = Invoke-RestMethod -Uri " http://api.open-notify.org/astros.json"
# Display the raw JSON
$response | ForEach-Object{$_.people} | ForEach-Object{$_.craft}

# Access specific fields from the JSON response