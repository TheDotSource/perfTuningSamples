$ScriptBlock = { 

    ## Set number of iterations
    $x = 6

    ## Set maximum number of jobs
    $MaxJobs = 3

    $ScriptBlock = {

        ## . source function
        . C:\TheDotSource\10-Invoke-PerfTestHigh.ps1

        ## Perf Test Script
        Invoke-PerfTestHigh -Iterations 1000

    }

    ## Start all jobs
    for ($i = 1; $i -le $x; $i++) {

        while ((Get-Job -State Running).count -ge $MaxJobs) {

            Start-Sleep -Milliseconds 100
        } # while
  
        Write-Host ("Starting worker thread.")
        Start-Job -ScriptBlock $ScriptBlock

    } # for

    ## Wait for remaining jobs to finish
    Write-Host ("Waiting for remaining workers to finish.")

    while ((Get-Job -State Running).count -gt 0) {

        Start-Sleep -Milliseconds 100
    } # while

    Write-Host ("All jobs complete.")

}

Measure-Command -Expression $ScriptBlock