$randomNumber = Get-Random -Minimum 1 -Maximum 11
$guess = 0

do {
    $guess = Read-Host "Guess the number between 1 and 10"
} until ($guess -eq $randomNumber)

Write-Host "Congratulations! You've guessed the correct number."
