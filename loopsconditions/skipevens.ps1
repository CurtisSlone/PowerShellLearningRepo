for ($i = 1; $i -le 10; $i++) {
    if ($i % 2 -eq 0) {
        continue
    }
    Write-Host $i
}
