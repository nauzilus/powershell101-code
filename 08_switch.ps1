$code = $args[0]

switch($code) {
  0 { "OK" }
  1 { "Error" }
  default { "Invalid" }
}
switch -regex ($code) {
  "^1\d\d$" { "Informational" }
  "^2\d\d$" { "Success" }
  "^3\d\d$" { "Redirection" }
  "^4\d\d$" { "Client Error" }
  "^5\d\d$" { "Server Error" }
}
switch -casesensitive ($code) {
  "foo" { "foo" }
  "FOO" { "FOO" }
}
switch ($code) {
  "bar" { "bar" }
  "BAR" { "BAR" }
}
