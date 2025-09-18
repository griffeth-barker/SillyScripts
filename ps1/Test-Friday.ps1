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
        switch ( [DateTime]::Today.DayOfWeek.Equals( [DayOfWeek]::Friday ) ) {
            $true {
                # Friday the 13th easter egg handling
                if ( [DateTime]::Today.Day.Equals(13) ) { 
                    $emojiString = "😨"
                } else {
                    $emojiString = "🎉"
                }
            }
            $false {
                $emojiString = "😭"
            }
        }
        Write-Host ''
        Write-Output $emojiString
        Write-Host ''
    }

    end {} 
}
