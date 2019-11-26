$ScriptBlock = {

    ## Conventional PowerShell array
    $SampleArray = @()

    ## Get service object
    $Service = Get-Service -Name "WinRM"

    $x = 30000

    for ($i = 0; $i -le $x; $i++) {

        $SampleArray += $Service

    } # for

} # ScriptBlock


Measure-Command -Expression $ScriptBlock