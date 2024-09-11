# Error handling for HTTP requests
try {
    $response = Invoke-RestMethod -Uri "https://api.github.com/user/repos" -Headers @{Authorization = "token YOUR_GITHUB_TOKEN"}
    $response | ForEach-Object { $_.name }
} catch {
    Write-Host "Error occurred: $($_.Exception.Message)"
}
