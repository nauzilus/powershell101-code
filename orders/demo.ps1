function hasBuyOrder($obj) {
	$obj.order.lineitem.action -contains "buy"
}
function buyOrders($obj) {
	$obj.order.lineitem | ?{ $_.action -eq "buy" }
}

Get-ChildItem *.xml,*.json | %{
	$raw = Get-Content -Raw $_;
	if ($_.Extension -eq ".json") {
		ConvertFrom-Json $raw
	}
	else {
		[xml] $raw
	}
} | ?{ hasBuyOrder $_ } | %{
	New-Object PSObject -Property @{
		Customer = $_.order.customer;
		Orders = @(buyOrders $_ | %{ @($_.quantity, $_.code) })
	}
} | Format-Table -AutoSize