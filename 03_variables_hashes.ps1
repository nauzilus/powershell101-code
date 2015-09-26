$states = @{
  Vic = "Victoria";
  SA  = "South Australia";
  WA  = "Washington";
}

$states | Format-Table -AutoSize

Write-Host "states[Vic] => $($states["Vic"])"
Write-Host "states.Vic => $($states.Vic)"

$states.Wa = "Western Australia"
$states | Format-Table -AutoSize

Write-Host "states.keys => $([array] $states.Keys -join ', ')"
Write-Host "states.vals => $([array] $states.Values -join ', ')"