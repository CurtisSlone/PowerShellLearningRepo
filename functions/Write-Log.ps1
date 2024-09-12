$LogFile = ".\" + $( Get-Date -UFormat "%Y-%m-%d_%H-%M-%S") + ".log"

Function Write-Log{
    Param(
        $logString
    )

    process{
        $stamp = (Get-Date).ToString("yyyy/m/dd HH:mm:ss")
        $LogMessage = "$stamp $Logstring"
        Add-Content $Logfile –Value $LogMessage

    }
}

Write-Log "is this thing on?"
