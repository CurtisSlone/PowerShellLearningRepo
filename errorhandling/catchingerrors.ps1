function Get-Files {
    PROCESS {
        try {
                $filename = $_
                Get-ChildItem -Path "$_" -ErrorAction "Stop"
        }
        catch [System.Management.Automation.ItemNotFoundException]{
            write-output "error! file not found: $filename"
        }
        catch {"unspecified error"}
    }
}
'foo.txt', 'nosuchfile', 'bar.txt' | Get-Files