# Array (reference type)
$array = @("Apple", "Banana", "Orange")
Write-Host "Original array: $($array -join ', ')"

# Modify the array
$refArray = $array
$refArray[1] = "Grapes"
Write-Host "Modified array: $($array -join ', ')"
