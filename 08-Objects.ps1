$ScriptBlock = {

    $x = 50000

    for ($i = 0; $i -le $x; $i++) {

        $result = New-Object -TypeName PSCustomObject -Property @{"prop1" = "test";}

    } # for

} # ScriptBlock


Measure-Command -Expression $ScriptBlock