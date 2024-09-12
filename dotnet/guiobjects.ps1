Add-Type -AssemblyName PresentationCore,PresentationFramework
$Button = [System.Windows.MessageBoxButton]::YesNo
$Title = "PowerShell for Everyone"
$Body = "Do you love PowerShell?"
$Icon = [System.Windows.MessageBoxImage]::Warning
[System.Windows.MessageBox]::Show($Body,$Title,$Button,$Icon)