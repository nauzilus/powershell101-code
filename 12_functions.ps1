function Say-Hello {
    Write-Host "Hello!"
}

Say-Hello

function Greet-Person($name, $greeting = "Hello") {
    Write-Host "$greeting, $name"
}

Greet-Person Dylan
Greet-Person Rene Bonjour
Greet-Person Blake, Yo

function Repeat-String([string]$str, [int]$rpt, [string]$delim = "-") {
	(@(1..$rpt) | %{ $str }) -join $delim
}

Repeat-String Bang "3"
Repeat-String Bang "3.8" ", "

function Is-Even([int] $number) {
    "Testing if $number is even"
    return -not($number % 2)
}
Is-Even 4
Is-Even 5

if (Is-Even 4) {
    "Even Steven"
} else {
    "How... odd"
}
if (Is-Even 5) {
    "Even Steven"
} else {
    "How... odd"
}

function Is-EvenFixed([int] $number) {
	Write-Host "Testing if $number is even"
	return -not($number % 2)
}

if (Is-EvenFixed 4) {
	"Even Steven"
} else {
	"How... odd"
}
if (Is-EvenFixed 5) {
	"Even Steven"
} else {
	"How... odd"
}
