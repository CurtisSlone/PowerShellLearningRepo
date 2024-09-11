# Choices
$choices = @("rock", "paper", "scissors")

# Main game loop
do {
    # Get user choice
    $userChoice = Read-Host "Choose rock, paper, or scissors"

    # Generate computer choice
    $computerChoice = Get-Random -InputObject $choices

    Write-Host "Computer chose: $computerChoice"

    # Compare choices and determine winner
    if ($userChoice -eq $computerChoice) {
        Write-Host "It's a tie!"
    } elseif (
        ($userChoice -eq "rock" -and $computerChoice -eq "scissors") -or
        ($userChoice -eq "paper" -and $computerChoice -eq "rock") -or
        ($userChoice -eq "scissors" -and $computerChoice -eq "paper")
    ) {
        Write-Host "You win!"
    } else {
        Write-Host "Computer wins!"
    }

    # Ask if user wants to play again
    $playAgain = Read-Host "Do you want to play again? (yes/no)"
} until ($playAgain -ne "yes")

Write-Host "Thanks for playing!"
