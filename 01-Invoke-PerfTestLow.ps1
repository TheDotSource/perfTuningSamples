function Invoke-PerfTestLow {
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


    Write-Host ("## Starting script in low performance mode with " + $Iterations + " iterations.") -ForegroundColor Green

    ## Create a native PowerShell array
    $SampleArray = @()


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

        ## Use native PowerShell array type
        $SampleArray += New-Object -TypeName PSObject -Property @{"Host" = $HostName; "VMName" = $VMName; "Type" = $Type;}

        ## Filter these objects and return only those of type "VM"
        $VMs = $SampleArray | Where {$_.type -eq "VM"}

    } # for


} # function