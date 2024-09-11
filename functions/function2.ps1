function Get-RoughRoot {
    param(
        [Parameter(ValueFromPipeline)]
        $number
    )

    begin {
        Write-Output "Starting with $number"
    }

    process {
        $start = 1
        while (($start * $start) -le $number){
            $result = $start
            $start += 1
        }
        Write-Output "Rough-Root $result"
    }

    end {
        Write-Output "Finished"
    }

    clean{
        Write-Output "Cleaning up"
    }
}

78676, 234234 | Get-RoughRoot