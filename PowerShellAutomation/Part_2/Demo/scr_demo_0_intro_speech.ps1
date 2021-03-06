# Author:  Bryan Cafferky      Date:  2013-11-29
# 
# Purpose:  Speaks the input...
#
# Warning:  This code is for demostration only and should not be used
#           for production.  No warrantees are implied and this code
#           is provided as is. 
#
#

function Invoke-UdfSpeech
{ 
 [CmdletBinding()]
        param (
              [string]$speakit = 'A default thing to say.'
              )

   Write-Verbose $speakit
  
   $speaker = New-Object -com SAPI.SpVoice

   $speaker.Speak($speakit, 1 ) | out-null
  
}

Clear-Host

# Example Call:

$intro = "PowerShell is an object oriented programming language and interactive command line shell for Microsoft Windows. 
PowerShell was designed to automate system tasks, such as batch processing, 
and create systems management tools for commonly implemented processes. 
The PowerShell language is similar to Perl.  It is a full featured language capable of supporting applications. "

Invoke-udfSpeech $intro -Verbose

# Invoke-udfSpeech "Hello there." -Verbose

# Intro text taken from http://searchwindowsserver.techtarget.com/definition/PowerShell
