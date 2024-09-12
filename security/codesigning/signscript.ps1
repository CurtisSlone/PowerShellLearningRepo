$cert = Get-ChildItem -Path Cert:\CurrentUser\My\$($cert.Thumbprint)
Set-AuthenticodeSignature -FilePath .\MyScript.ps1 -Certificate $cert
Get-AuthenticodeSignature -FilePath .\MyScript.ps1
