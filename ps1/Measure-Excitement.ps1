function Measure-Excitement {
    <#
    .SYNOPSIS
        Measures the excitement of a string.
    .DESCRIPTION
        This function takes a string and returns a number representing the excitement of the string.
    .INPUTS
        System.String
        Accepts a string or an array of strings.
    .OUTPUTS
        System.Int32
        Returns an integer representing the excitement of the string.
    .EXAMPLE
        Measure-Excitement -String "I'm so excited!"

        Pass an inline string.
    .EXAMPLE
        "I'm so excited!!!" | Measure-Excitement

        Pipe a string.
    #>

    [CmdletBinding()]
    param (
        [Parameter(Mandatory = $true, ValueFromPipeline = $true)]
        [System.String[]]
        $String
    )

    begin {
        $output = [System.Collections.Generic.List[PSCustomObject]]::new()
    }

    process {
        foreach ($s in $String) {
            $matches = [regex]::Matches($s, "!+$")
            if ($matches.Length -lt 1) {
                $excitement = 0
            } else {
                $excitement = $matches.Length
            }

            $output.Add(
                [PSCustomObject]@{
                    String     = $s
                    Excitement = $excitement
                }
            )
        }
    }

    end {
        Write-Output $output
    }
}
