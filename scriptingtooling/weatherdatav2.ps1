[CmdletBinding()]
Param(
    [string[]]$City = "London",
    $OutputFile = "WeatherData.html",
    $OutputPath = "."
    $KeyFile = "key.txt".
    [switch] $Joke
)

process {
    foreach ($item in $City) {
        if ($Joke.IsPresent) {
            Write-Output "Joke"
        }
        Write-Verbose "Processing $item"

        $Output = "$($OutputPath)\$($item)_$($OutputFile)"

        $key = Get-Content $KeyFile
        $headers = @{"key" = "$key"}
        $uri = "https://api.weatherapi.com/v1/current.json?q=$($item)&aqi=no"
        $response = Invoke-RestMethod -Uri $uri -Method GET - Headers $headers
        $respone | Convertto-Html | Out-File $Output
    }
}