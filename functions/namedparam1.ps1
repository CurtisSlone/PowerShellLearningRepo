function Get-Greeting {
    param (
        [string]$Name,
        [string]$TimeOfDay
    )
    Write-Output "Good $TimeOfDay, $Name!"
}

# Call the function with named parameters
Get-Greeting -Name "John" -TimeOfDay "Morning"
