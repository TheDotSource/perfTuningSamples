$ScriptBlock = {
    
    $x = 1000

    for ($i = 0; $i -le $x; $i++) {

        $Service = Get-Service | where {$_.Name -eq "WinRM"}

    } # for

} # ScriptBlock


Measure-Command -Expression $ScriptBlock