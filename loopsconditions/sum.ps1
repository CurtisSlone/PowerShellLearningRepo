$numbers = @(1, 2, 3, 4, 5)
$sum = 0

foreach ($number in $numbers) {
    $sum += $number
}

Write-Host "The sum is: $sum"
