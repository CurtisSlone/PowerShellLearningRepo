$NewArray = 1..10
$AnotherArray = @(1..5; "some stuff")
$MyArray = 1,2,3
$number = ,1
[Array]$MyTinyArray = 1
$bigarray = $NewArray + $AnotherArray

$NewArray
$AnotherArray
$MyArray
$number
$MyTinyArray
$bigarray

$NewArray | Where-Object {$_ -gt 5}
Measure-Command {@(0..100000).ForEach({$_ * $_})}
$ArrayList = [System.Collections.ArrayList]@()
1..10000 | ForEach-Object { $Null = $ArrayList.Add($_) }
$ArrayList
$AutoArray = (1..10000 | ForEach-Object {$_})
$AutoArray
Measure-Command {$AutoArray = (1..10000 | ForEach-Object {$_})}