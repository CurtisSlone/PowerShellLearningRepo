# Fetching JSON data from a public API
$response = Invoke-RestMethod -Uri "https://jsonplaceholder.typicode.com/posts/1"
# Display the raw JSON
$response

# Access specific fields from the JSON response
$response.title
$response.body
