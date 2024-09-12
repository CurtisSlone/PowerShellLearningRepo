$timer = (New-Object -TypeName System.Timers.Timer -Property @{
    AutoReset = $true
    Interval = 5000
    Enabled = $true
    }
    )

    Register-ObjectEvent -InputObject $timer -EventName Elapsed -SourceIdentifier Test -Action {Write-Host "hello"}
    $timer.start()
    $timer.stop()
