function Get-HelloWorld {
    param([string]$Name = "World")
    Write-Host "Hello, $Name!"
}