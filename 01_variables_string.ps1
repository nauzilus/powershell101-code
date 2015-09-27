$name = "Sam"
Write-Host "name => $name"

$greeting = "Hello, $name."
Write-Host "greeting => $greeting"

$length = "$name's name has $($name.Length) characters"
Write-Host "length($($length.GetType())) => $length"

$length = 42
Write-Host "length($($length.GetType())) => $length"

$literally = '$name is literally the variable name'
Write-Host "literally => $literally"
