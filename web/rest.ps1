# Define data to send in the request body
$body = @{
    name = "John Doe"
    job = "Software Engineer"
} | ConvertTo-Json

# Send a POST request
$response = Invoke-RestMethod -Uri "https://reqres.in/api/users" -Method POST -Body $body -ContentType "application/json"
# Output the response
$response

