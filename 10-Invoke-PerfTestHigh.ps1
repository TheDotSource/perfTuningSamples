function Invoke-PerfTestHigh {
    <#
    .SYNOPSIS
        Sample script with sample constructs to demonstrate performance differences.
    .DESCRIPTION
        Demonstrates the difference between differing Powershell constructs and their performance difference.
        Can be run in "high" or "low" performance mode.
    .EXAMPLE

    .NOTES
        01       12/12/18     Initial version.                    A McNair
    #>

    [CmdletBinding()]
    Param
    (
        [Parameter(Mandatory=$true,ValueFromPipeline=$false)]
        [int]$Iterations

    )


    ## Clear the screen
    cls
    Write-Host ("## Starting script in high performance mode with " + $Iterations + " iterations.") -ForegroundColor Green


    ## Create a .net array
    $SampleArray = [System.Collections.ArrayList]@()


    ## Define custom filter for VMs
    filter typeVM { 
        if ($_.Name -eq 'powershell_ise') { 
            $_ 
        } # if
    } # filter

    ## Start iterations
    for ($i = 1; $i -le $Iterations; $i++) {
    

        ## Create some dummy properties for the object we will place in the array.
        $HostName = ("Host-" + $i)
        $VMName = ("VM" + $i)



        ## Set different types every iteration for variety
        if ($IsEven) {

            $Type = "Host"
            $IsEven = $false
        } # if
        else {

            $Type = "VM"
            $IsEven = $true
        } # else


        ## Use .net construct
        $null = $SampleArray.Add(([pscustomobject]@{"Element01" = "Value01"; "Element02" = "Value02"; "Element03" = "Value03";}))

        ## Filter these objects and return only those of type "VM"
        $VMs = $SampleArray | typeVM

    } # for


} # function