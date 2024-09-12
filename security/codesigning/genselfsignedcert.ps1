$cert = New-SelfSignedCertificate -DnsName "MyCodeSigningCert" -Type CodeSigningCert -CertStoreLocation Cert:\CurrentUser\My

Get-ChildItem -Path Cert:\CurrentUser\My

Export-Certificate -Cert Cert:\CurrentUser\My\$($cert.Thumbprint) -FilePath .\MyCodeSigningCert.cer

Import-Certificate -FilePath .\MyCodeSigningCert.cer -CertStoreLocation Cert:\CurrentUser\Root

