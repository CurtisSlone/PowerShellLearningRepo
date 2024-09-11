$dayNumber = Read-Host "Enter a number between 1 and 7"

switch ($dayNumber) {
    1 { Write-Host "Sunday" }
    2 { Write-Host "Monday" }
    3 { Write-Host "Tuesday" }
    4 { Write-Host "Wednesday" }
    5 { Write-Host "Thursday" }
    6 { Write-Host "Friday" }
    7 { Write-Host "Saturday" }
    default { Write-Host "Invalid number!" }
}
