# [System.Text.StringBuilder]::new
$string1 = ([System.Text.StringBuilder]::new(32))
$string2 = ([System.Text.StringBuilder]::new('32'))
$string1.tostring()
$string2.tostring()