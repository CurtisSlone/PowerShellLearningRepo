Get-CimInstance Win32_Printer | Where-Object {$_.Name -like 'HPF*'}
Get-CimClass -Namespace 'Root' | Select-Object -First 10
Get-CimInstance -Namespace 'Root' -ClassName __NAMESPACE
Get-CimClass | Select-Object -First 5