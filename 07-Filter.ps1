filter isISE { 
    if ($_.Name -eq 'powershell_ise') { 
        $_ 
    }
}


$ScriptBlock = {

    $x = 20

    for ($i = 0; $i -le $x; $i++) {

        $testObj | isISE

    } # for

} # ScriptBlock

Measure-Command -Expression $ScriptBlock