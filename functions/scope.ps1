$ScopeTest = 10
Function Set-ScopeTest {$ScopeTest = 15; Write-Output "the value of ScopeTest is $ScopeTest"}
$ScopeTest
Set-ScopeTest
$ScopeTest