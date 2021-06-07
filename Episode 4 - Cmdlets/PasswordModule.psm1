function New-Password {
    [CmdletBinding()]
    param (
        [int] $Length = 42,

        [boolean] $Complex = $true
    )
    
    process {
        $numbers = 0..9
        $lowercase = 'a'..'z'
        $uppercase = 'A'..'Z'
        $specialcharacters = @("!";"?";"-";"_";".";",";" ")

        
        if($Complex) {
            $allcharacters = $numbers + $lowercase + $uppercase + $specialcharacters
        } else {
            $allcharacters = $numbers + $lowercase + $uppercase
        }

        $randomcharacters = $allcharacters | Get-Random -Count $Length

        return $randomcharacters -join ""
        # $password = 1..$Length | Foreach {$allcharacters | Get-Random -Count 1}
    }
}