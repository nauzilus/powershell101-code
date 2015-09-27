$numbers = @(1..5) | %{ Sleep -Milliseconds 500; $_ };
$numbers | %{ "Got $_" }

@(1..5) | %{ Sleep -Milliseconds 500; $_ } | %{ "Got $_" }

@(1..5) | %{ Sleep -Milliseconds 500; $_ } | Sort -Desc | %{ "Got $_" }

$odds = @(1..10) | Where-Object {
    Write-Host "Processing $_";
    $_ % 2
}
Write-Host ("odds => {0}" -f ($odds -join ", "))