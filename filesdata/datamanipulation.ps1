# List files larger than 1 MB and modified in the last 7 days
Get-ChildItem -Path "." | Where-Object { $_.Length -gt 1MB -and $_.LastWriteTime -gt (Get-Date).AddDays(-7) }

# Rename all .txt files by adding a suffix
Get-ChildItem -Path "." -Filter *.txt | ForEach-Object {
    $newName = $_.BaseName + "_new" + $_.Extension
    Rename-Item -Path $_.FullName -NewName $newName
}

Get-Content -Path .\date.xml