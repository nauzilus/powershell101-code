$name = "Sam"
Write"name => $name"

$greeting = "Hello, $name."
Write-Host "greeting => $greeting"

$contrived = "$name's name has $($name.Length) characters"
Write-Host "contrived => $contrived"

$literally = '$name is literally the variable name'
Write-Host "literally => $literally"
