# Create a custom object
$person = New-Object PSObject -Property @{
    Name = "John Doe"
    Age = 30
    IsEmployed = $true
}

# Display object type and properties
$person.GetType()
Write-Host "Name: $($person.Name), Age: $($person.Age), Employed: $($person.IsEmployed)"

# Modify the object (reference type)
$anotherPerson = $person
$anotherPerson.Name = "Jane Doe"
Write-Host "Updated Name: $($person.Name)"

# Splatting with custom object properties
$parameters = @{
    Name = $person.Name
    Credential = Get-Credential
}

# Use splatting to invoke a cmdlet (replace with any cmdlet requiring credentials)
# Example: Get-Service @parameters
