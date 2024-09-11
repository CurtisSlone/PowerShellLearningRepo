$Hash = @{}

$Hash.GetType()
$MyBike = @{HandleBar = "ApeHanger"; Color = "Red"; Wheel = 15}
$MyBike

$MyBike.Add('Bell', $True)
$MyBike.Add('Condition','Poor')
$MyBike
$MyBike['Gears'] = 'Fixed'
$MyBike | Measure-Object
$MyBike.Count
$MyBike.condition
$MyBike['Wheel']
$MyBike['HandleBar', 'Condition', 'Gears']
$BikeDetails = 'HandleBar', 'Condition', 'Gears'
$MyBike[$BikeDetails]
$MyBike.GetEnumerator()
$MyBike | ForEach-Object {[Array]$BikeProperties += $_}
$BikeProperties.Count
$MyBike.GetEnumerator() | ForEach-Object {[Array]$NewBikeProperties += $_}
$NewBikeProperties.Count