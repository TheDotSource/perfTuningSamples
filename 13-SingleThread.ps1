$ScriptBlock = {

    ## Perf Test 01
    Invoke-PerfTestHigh -Iterations 1000

    ## Perf Test 02
    Invoke-PerfTestHigh -Iterations 1000

    ## Perf Test 03
    Invoke-PerfTestHigh -Iterations 1000

    ## Perf Test 04
    Invoke-PerfTestHigh -Iterations 1000

    ## Perf Test 05
    Invoke-PerfTestHigh -Iterations 1000

    ## Perf Test 06
    Invoke-PerfTestHigh -Iterations 1000
}


Measure-Command -Expression $ScriptBlock