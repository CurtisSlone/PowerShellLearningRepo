Trace-Command -Name ParameterBinding -Expression {New-Object -TypeName PSObject -Property @{'Id' = (Get-Random)} | Stop-Process -WhatIf} -PSHost

# Trace the binding of parameters when stopping services
Trace-Command -Name ParameterBinding -Expression { Stop-Service -Name 'wuauserv' -WhatIf } -PSHost

# Trace the internal command execution flow of Get-Process
Trace-Command -Name CommandDiscovery,CommandLookup,CommandBinding -Expression { Get-Process -Name 'notepad' } -PSHost

# Trace the execution of a custom script
Trace-Command -Name ScriptExecution -Expression { .\MyScript.ps1 } -PSHost

# Trace operations when navigating the file system
Trace-Command -Name Provider -Expression { Get-ChildItem -Path 'C:\Windows' } -PSHost

# Trace alias resolution for a common alias
Trace-Command -Name Alias -Expression { ls } -PSHost

# Trace module loading when importing a module
Trace-Command -Name Module -Expression { Import-Module ActiveDirectory } -PSHost

# Trace the discovery of a command
Trace-Command -Name CommandDiscovery -Expression { Get-Process } -PSHost

# Trace error handling in a command
Trace-Command -Name ErrorHandling -Expression { Get-Process -Name 'invalidProcess' } -PSHost

Get-TraceSource
