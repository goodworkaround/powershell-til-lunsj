$manuelt = @(
    "Her er tekst"
    67
    $True
)

$manuelt[0]
$manuelt[-1]


$manuelt += "Test"

$manuelt 

$list = New-Object System.Collections.ArrayList
$list.Add("Test")

$hashmap = @{
    alder = 16
    navn = "Marius"
}

$hashmap.alder 
$hashmap.navn 
$hashmap["navn"]

$hashmap.ContainsKey("adresse")

$hashmap["adresse"] = "Omvegen 12"
$hashmap["adresse"] 


$brukere = @(
    @{
        alder = 16
        navn = "Pål-Erik"
    }

    @{
        alder = 33
        navn = "Marius"
    }
)

$filer = Get-ChildItem c:\windows\system32
$filer[100].Extension

$filer | where Extension | group Extension | sort count | select -last 5 | select name, count | fl 
