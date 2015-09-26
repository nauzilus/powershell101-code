Get-ChildItem | Sort-Object LastWriteTime | Select-Object BaseName,LastWriteTime

Get-ChildItem | Sort-Object -Descending {
    $_.LastWriteTime.TimeOfDay
} | Format-Table -Autosize BaseName,LastWriteTime

$orders = Get-Content -Raw orders/*.xml
foreach ($order in $orders) {
    $xml = [xml] $order
    if ($xml.order.lineitem.action -eq "sell") {
        $xml.order.customer
    }
}

Get-Content -Raw orders/*.xml  | ForEach-Object {
    [xml] $_
} | Where-Object {
    $_.order.lineitem.action -eq "sell"
} | ForEach-Object {
    $_.order.customer
}