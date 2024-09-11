$temperature = Read-Host "Enter the temperature in degrees"

if ($temperature -lt 10) {
    Write-Host "It's cold!"
} elseif ($temperature -ge 10 -and $temperature -lt 30) {
    Write-Host "It's warm."
} else {
    Write-Host "It's hot!"
}
