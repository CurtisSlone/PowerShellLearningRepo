function Test-Date {
    param(
        [string]$date
    )
    if ($date -match "^(3[01]|[12][0-9]|0?[1-9])(\/|-)(1[0-2]|0?[1-9])\2([0-9]{2})?[0-9]{2}$")
{
        return $true
    }
    else {
        return $false
    }
}