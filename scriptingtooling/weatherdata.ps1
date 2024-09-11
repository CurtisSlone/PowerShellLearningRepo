[CmdletBinding()]
Param(
    [Parameter(Mandatory = $true)]
    $City = "London",
    $KeyFile = "key.txt",
)

$key = Get-Content $KeyFile
$headers = @{"key" = "$key"}
$uri = "https://api.weatherapi.com/v1/current.json?q=$($City)&aqi=no"
$response = Invoke-RestMethod -Uri $uri -Method Get - Headers $headers
$reponse | Convertto-Html | Out-File ".\weatherdata.html"