Set-Location -Path "."
Get-ChildItem
New-Item -ItemType Directory -Path ".\tmpdir"
New-Item -ItemType File -Path ".\tmp.txt"
Remove-Item -Path ".\tmpdir" -Recurse -Confirm