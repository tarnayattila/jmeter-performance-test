param(
    [string]$Test
)

$JMeter = "E:\JMeter\apache-jmeter-5.6.3\apache-jmeter-5.6.3\bin\jmeter.bat"
$Result = "results/result_$($Test)_$(Get-Date -Format yyyyMMddHHmmss).jtl"

Write-Host "Running JMeter test: $Test"
& $JMeter -n -t "jmeter\$Test.jmx" -l $Result

Write-Host "Generating HTML report..."
& $JMeter -g $Result -o "reports\$Test`_html"

Write-Host "Done. Report: reports\$Test`_html\index.html"
