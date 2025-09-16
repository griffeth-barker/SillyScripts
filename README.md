# SillyScripts
A collection of silly PowerShell scripts and functions that nobody asked for and nobody will ever use.

## About
Occasionally I think of dumb things that I could do with PowerShell. Other times, I ask an LLM to come up with a silly idea.
Either way, they're silly and useless but I'll still share them here.

## Disclaimer
I shouldn't have to put this here, in a respository called "SillyScripts", but:

These are not production-ready scripts and should not be used for any actual work. They should not be considered reliable or safe to use.

## Getting Started
Clone this repository to your local machine:
```
git clone https://github.com/griffeth-barker/SillyScripts.git
```

Unblock the files:
```PowerShell
Get-ChildItem -Path .\SillyScripts -Recurse -Include *.ps1 | Unblock-File
```

The scripts are provided as functions, so you can import them into your PowerShell session as you desire and call them by their function names:
```PowerShell
Import-Module .\SillyScripts\ConvertTo-SarcasticCase.ps1
ConvertTo-SarcasticCase -String "But did you really need these scripts?"
```
