$names = @("Lee", "Kim", "Jamie")
Write-Host "names => $($names -join ', ')"

$names += "Ainsley"
Write-Host "names => $($names -join ', ')"

$numbers = @(0 .. 9)
Write-Host "numbers => $($numbers -join ', ')"

$alphas = "abcdef".ToCharArray() # a..f doesn't work =(
Write-Host "alphas => $($alphas -join ', ')"

# arrays are flattened when concatenating
$hex = $numbers + $alphas
Write-Host "hex => $($hex -join ', ')"

# array of arrays
$hex = ,$numbers + ,$alphas
Write-Host "hex => $($hex -join ', ')"
