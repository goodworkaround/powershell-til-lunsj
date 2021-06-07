
$PSVersionTable

$tekst = "Marius banner for mye"
$tekst = 'Marius banner for mye'

$tekst | get-member 

$tekst.ToUpper() 
$tekst.ToLower() 

$nytekst = "Dette var originalteksten: $($tekst.ToUpper())"