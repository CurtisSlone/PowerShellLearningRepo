function Get-RoughRoot {
    param(
        $number
    )

    $start = 1
    while(($start * $start) -le $number) {
        $result = $start
        $start +=1
    }
    return $result
}
Get-RoughRoot 785692