[CmdletBinding()]
param(
    $Path = ".\ch10"
)
$files = (Get-ChildItem -Path $Path)
Write-Verbose "Getting Files...."
foreach($File in $files){
    Write-Debug "Current File is $file"
}