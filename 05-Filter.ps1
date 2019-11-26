$ScriptBlock = {

    $x = 20

    for ($i = 0; $i -le $x; $i++) {

        $results = $testObj | Where-Object { $_.Name -eq 'powershell_ise' }

    } # for

} # ScriptBlock


Measure-Command -Expression $ScriptBlock