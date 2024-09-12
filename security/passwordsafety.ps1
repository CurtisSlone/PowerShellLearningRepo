$cred = Get-Credential
$cred | Export-Clixml Credential.xml

$pwd = "ILovePowershell"
$securepwd = $pwd | ConvertTo-SecureString -AsPlainText -Force
$encryptedpwd = $pwd | ConvertFrom-SecureString
Write-Host $encryptedpwd

add-content .\encryptedpwd.txt $encryptedpwd
$securepwd2 = (Get-Content .\encryptedpwd.txt | ConvertTo-SecureString)
$cred = New-Object System.Management.Automation.PSCredential ("UserName", $securepwd2)
$cred.GetNetworkCredential().Password
