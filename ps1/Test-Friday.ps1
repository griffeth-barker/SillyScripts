function Test-Friday {
    <#
    .SYNOPSIS
        Tests if the current date is a Friday.
    .DESCRIPTION
        This function returns an emoji based on whether the current date is a Friday.
    .INPUTS
        None
    .OUTPUTS
        System.String
    .EXAMPLE
        Test-Friday
    #>

    [CmdletBinding()]
    param ()

    begin {}

    process {
        switch ( (Get-Date).DayOfWeek -eq [DayOfWeek]::Friday ) {
            $true {
                Write-Output "🎉"
            }
            $false {
                Write-Output "😭"
            }
        }
    }

    end {} 
}
