$ScriptBlock = {

    ## .net defined array
    $SampleArray = [System.Collections.ArrayList]@()

    ## Get service object
    $Service = Get-Service -Name "WinRM"

    $x = 30000

    for ($i = 0; $i -le $x; $i++) {

        $result = $SampleArray.Add($Service)

    } # for

} # ScriptBlock


Measure-Command -Expression $ScriptBlock