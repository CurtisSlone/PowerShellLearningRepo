# Prompt user for input
$number = Read-Host "Enter a number"

# Convert input to an integer
$number = [int]$number

if ($number -gt 0) {
    Write-Host "The number is positive."
} elseif ($number -lt 0) {
    Write-Host "The number is negative."
} else {
    Write-Host "The number is zero."
}
