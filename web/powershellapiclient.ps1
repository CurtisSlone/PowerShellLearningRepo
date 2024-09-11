# Function to perform multiple API requests
function Invoke-ApiRequest {
    param (
        [string]$method,
        [string]$url,
        [hashtable]$body = $null
    )

    # Convert the hashtable to JSON if provided
    if ($body -ne $null -and $body -is [hashtable]) {
        $body = $body | ConvertTo-Json -Compress
    }

    try {
        $response = Invoke-RestMethod -Uri $url -Method $method -Body $body -ContentType "application/json"
        return $response
    } catch {
        Write-Host "Error: $($_.Exception.Message)"
    }
}

# Making a GET request
$apiUrl = "https://jsonplaceholder.typicode.com/posts/1"
$response = Invoke-ApiRequest -method "GET" -url $apiUrl
$response

# Making a POST request with a hashtable
$newPost = @{
    title = "New Post"
    body = "This is a new post created via PowerShell"
    userId = 1
}
$response = Invoke-ApiRequest -method "POST" -url "https://jsonplaceholder.typicode.com/posts" -body $newPost
$response

# Making a PUT request with a hashtable
$updatePost = @{
    id = 1
    title = "Updated Post"
    body = "This post has been updated"
    userId = 1
}
$response = Invoke-ApiRequest -method "PUT" -url "https://jsonplaceholder.typicode.com/posts/1" -body $updatePost
$response
