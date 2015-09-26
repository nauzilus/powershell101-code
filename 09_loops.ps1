$names = @("Sam", "Lee", "Charlie")
foreach ($name in $names) {
  "Hello $name"
}
for ($i = 0; $i -lt $names.Length; $i++) {
  "$i`: $name"
}

$x = 0;
while ( $x++ -lt 10 ) {
    "x is $x";
}

do {
    "Type 'q' to exit"
} while ((Read-Host) -ne "q");