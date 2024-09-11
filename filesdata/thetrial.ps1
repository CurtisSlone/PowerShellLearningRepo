$TheTrial  =  Get-Content -Path .\thetrial.txt -Raw
$TrialWords = $TheTrial.Split(" ")
$TrialWords.Length

$GroupedWords = $TrialWords | Group-Object
$GroupedWords = $TrialWords | Group-Object | Sort-Object Count
$GroupedWords[-1..-10]