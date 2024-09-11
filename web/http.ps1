# Perform a simple GET request
$response = Invoke-WebRequest -Uri "https://api.github.com"
# Output the raw response
$response.Content
$response.Links | foreach ($_) {
    <# $  is the current item #>
}
