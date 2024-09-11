Function Set-ScopeTest {
    Write-Output "the value of ScopeTest is $ScopeTest"
    $ScopeTest = 15
    Write-Output "the value of ScopeTest is $ScopeTest"
    
    Write-Output "Global Variable:"
    Get-Variable -Scope global | Where-Object { $_.name -like "Scope*" }
    
    Write-Output "`n"
    Write-Output "Local Variable:"
    Get-Variable -Scope local | Where-Object { $_.name -like "Scope*" }
}

# Run the function
Set-ScopeTest
