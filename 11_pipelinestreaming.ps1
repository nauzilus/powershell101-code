$numbers = @(5..1) | %{ Sleep -Milliseconds 500; $_ };
$numbers | %{ "Got $_" }

@(5..1) | %{ Sleep -Milliseconds 500; $_ } | %{ "Got $_" }

@(5..1) | %{ Sleep -Milliseconds 500; $_ } | Sort | %{ "Got $_" }

@(1..10) | Where-Object {
    Write-Host "Processing $_"; $_ % 2
}