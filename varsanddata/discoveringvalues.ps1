# Integer (value type)
[int]$number = 42

# Boolean (value type)
[bool]$isTrue = $true

# Character (value type)
[char]$letter = 'A'

# Display types
Write-Host "Number: $number, Type: $($number.GetType())"
Write-Host "Boolean: $isTrue, Type: $($isTrue.GetType())"
Write-Host "Character: $letter, Type: $($letter.GetType())"
