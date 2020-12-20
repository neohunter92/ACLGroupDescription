#requires -version 5.1

. "$PSScriptRoot\Test-ACLGroupDescription.ps1"

$functions = @('Test-ACLGroupDescription')

Export-Modulemember -function $functions