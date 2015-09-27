$startDate = [DateTime]::Parse("2014-06-02 09:00")
Write-Host $startDate

$startDate = [DateTime] "2014-06-02 09:00"
Write-Host $startDate

$xml = [xml] "<order qty='100' name='Soylent Beans' />"
Write-Host "xml => $($xml.OuterXml)"
Write-Host "Buy $($xml.order.qty) $($xml.order.name)"

$random = New-Object Random
$random.Next()

$guid = [Guid]::NewGuid()
$guid