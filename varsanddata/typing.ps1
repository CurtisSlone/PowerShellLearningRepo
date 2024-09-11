# Implicit type
$var = "100"
Write-Host "Variable value: $var, Type: $($var.GetType())"

# Explicit type
[int]$var = "100"
Write-Host "Variable value: $var, Type: $($var.GetType())"

# Type conversion
[int]$converted = [int]"123"
Write-Host "Converted value: $converted, Type: $($converted.GetType())"
