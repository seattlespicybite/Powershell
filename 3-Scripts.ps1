# Module 3. Scripting

#Visual Studio Code has built-in intelli sense that helps to create templates
#start typing 'func'
function Get-currentTime  {
    $CurrentTime = Get-Date 
    return $CurrentTime
}
 Get-currentTime | Out-File -FilePath C:\Drivers\time.txt -Append
function FunctionName (OptionalParameters) {
#Type 'comment-help' for additional help
    <#
    .SYNOPSIS
        Short description
    .DESCRIPTION
        Long description
    .EXAMPLE
        PS C:\> <example usage>
        Explanation of what the example does
    .INPUTS
        Inputs (if any)
    .OUTPUTS
        Output (if any)
    .NOTES
        General notes
    #>
}
 #Start typing 'cmd' for commandlets template
 function Verb-Noun {
     [CmdletBinding()]
     param (
         
     )
     
     begin {
     }
     
     process {
     }
     
     end {
     }
 }

#Another way to get help about the 
