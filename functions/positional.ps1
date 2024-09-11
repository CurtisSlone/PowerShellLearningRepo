function Get-Greeting {
    param (
        [Parameter(Position=0)]
        [string]$Name,
        
        [Parameter(Position=1)]
        [string]$TimeOfDay
    )
    Write-Output "Good $TimeOfDay, $Name!"
}

# Call with positional parameters
Get-Greeting "John" "Evening"
