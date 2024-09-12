[System.AppDomain]::CurrentDomain.GetAssemblies()
[System.AppDomain]::CurrentDomain.GetAssemblies() | select FullName
Add-Type -AssemblyName PresentationCore,PresentationFramework