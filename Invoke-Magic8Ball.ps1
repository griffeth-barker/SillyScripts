function Invoke-Magic8Ball {
    <#
    .SYNOPSIS
        Asks the Magic 8 Ball a question.
    .DESCRIPTION
        This function passes the provided question to the Magic 8 Ball and returns its response.
    .INPUTS
        System.String[]
        You can pipe one or more strings (questions) into this function.
    .OUTPUTS
        System.Management.Automation.PSCustomObject
        Each output object contains a 'Question' and an 'Answer'
    .EXAMPLE
        Invoke-Magic8Ball -Question "Is the sky blue?"

        Pass a single string.
    .EXAMPLE
        Invoke-Magic8Ball -Question @(
            'Is the sky blue?',
            'Should I tie my shoes?',
            'Do ghosts say "Boo"?'
        )
        
        Pass an inline array of strings.
    .EXAMPLE
        @(
            'Is the sky blue?',
            'Should I tie my shoes?',
            'Do ghosts say "Boo"?'
        ) | Invoke-Magic8Ball

        Pipe an array of strings.
    #>

    [CmdletBinding()]
    param (
        [Parameter(Mandatory = $true, ValueFromPipeline = $true)]
        [System.String[]]
        $Question
    )

    begin {
        $output = [System.Collections.Generic.List[PSCustomObject]]::new()

        $responses = @(
            "It is certain",
            "Reply hazy, try again",
            "It is decidedly so",
            "Ask again later",
            "Don't count on it",
            "Without a doubt",
            "Better not tell you now",
            "My sources say no",
            "Yes definitely",
            "Cannot predict now",
            "Outlook not so good",
            "You may rely on it",
            "Concentrate and ask again",
            "Very doubtful",
            "As I see it, yes",		
            "Most likely",
            "Outlook good",	
            "Yes",
            "Signs point to Yes",
            "My reply is no"
        )
    }

    process {
        foreach ($q in $Question) {
            $output.Add(
                [PSCustomObject]@{
                    Question = $q
                    Answer   = $responses | Get-Random
                }
            )
        }
    }

    end {
        Write-Output $output
    }
}