function ConvertTo-SarcasticCase {
    <#
    .SYNOPSIS
        Converts a string to sarcastic case.
    .DESCRIPTION
        This function takes a string and returns it in sarcastic case.
    .INPUTS
        System.String
        Accepts a string or an array of strings.
    .OUTPUTS
        System.Management.Automation.PSCustomObject
        Returns a PSCustomObject or an array of PSCustomObjects.
    .EXAMPLE
        ConvertTo-SarcasticCase -String "I'm a programmer"

        Pass an inline string.
    .EXAMPLE
        "I'm a programmer" | ConvertTo-SarcasticCase

        Pipe a string.
    #>

    [CmdletBinding()]
    param (
        [Parameter(Mandatory = $true, ValueFromPipeline = $true)]
        [System.String]
        $String
    )

    begin {
        $output = [System.Collections.Generic.List[PSCustomObject]]::new()
    }

    process {
        $output.Add(
            [PSCustomObject]@{
                String        = $String
                SarcasticCase = $String.ToLower().Replace('a', 'A').Replace('e', 'E').Replace('i', 'I').Replace('o', 'O').Replace('u', 'U').Replace('y', 'Y')
            }
        )
    }

    end {
        Write-Output $output
    }
}