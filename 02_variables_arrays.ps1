$names = @("Lee", "Kim", "Jamie")
Write-Host "names => $([string]::Join(', ', $names))"
$names += "Ainsley"
Write-Host "names => $($names -join ', ')"

$numbers = @(0 .. 9)
Write-Host "numbers => $($numbers -join ', '))"
$alphas = "abcdef".ToCharArray() # a..f doesn't work =(
Write-Host "alphas => $($alphas -join ', ')"

$hex = $numbers + $alphas
Write-Host "hex => $($hex -join ', ')"