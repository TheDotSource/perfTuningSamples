## Run chronometer against low performance script
$LowPerf = Get-Chronometer -Path C:\TheDotSource\01-Invoke-PerfTestLow.ps1 -ScriptBlock { 
    . C:\TheDotSource\01-Invoke-PerfTestLow.ps1
    Invoke-PerfTestLow -Iterations 100
}
$LowPerf | Format-Chronometer