$a = 10
Invoke-Command -ScriptBlock {$a * $a}

$square= { $a * $a }
Invoke-Command $square
$square.invoke();

$square = {param($a) $a * $a}
$square.invoke(10)

&$square 20

