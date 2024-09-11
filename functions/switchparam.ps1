function Get-Greeting {
    param (
        [string]$Name,
        [switch]$Formal
    )

    if ($Formal) {
        Write-Output "Greetings, $Name."
    } else {
        Write-Output "Hi, $Name!"
    }
}

# Call with the switch parameter
Get-Greeting -Name "Alice" -Formal

# Call without the switch parameter
Get-Greeting -Name "Bob"
