function Test-ACLGroupDescription {
    <#
    .SYNOPSIS
    Testet die Gruppenbeschreibungen mit den angegegebenen Pattern.
    .DESCRIPTION
    Testet die Gruppenbeschreibungen mit den angegegebenen Pattern, wenn der Match Parameter angegeben wird, werden die Gruppen aufgelistet wo die Pattern übereinstimmen.
    Wenn der Match Parameter nicht mitgegeben wird, dann werden alle Gruppen ausgegeben, welche nicht übereinstimmen.
    Die Angabe von Searchbase, Pattern und Filter Parameter sind zwingend erforderlich.
    .EXAMPLE
    Test-GroupDescription -Searchbase "OU=Users, DC=Contoso, DC=COM" -Pattern "([A-Z])\w+" -Filter * -Match
    Testet die übereinstimmenden Gruppenbeschreibungen mit den angegegebenen Pattern.
    .EXAMPLE
    Test-GroupDescription -Searchbase "OU=Users, DC=Contoso, DC=COM" -Pattern "([A-Z])\w+" -Filter *
    Testet die nicht übereinstimmenden Gruppenbeschreibungen mit den angegegebenen Pattern.
    .NOTES
    Wurde von Laszlo Forgo entwickelt.
    .LINK
    #>
        param (
            [Parameter(Mandatory=$true,HelpMessage='Bitte Distinguished Name der OU eingeben')][string]$Searchbase,
            [Parameter(Mandatory=$true,HelpMessage='Regular Expresssion eingeben')][string]$Pattern,
            [Parameter(Mandatory=$true)][string]$Filter,
            [switch]$Match
        )
        $Result = @()
        $Groups = Get-ADGroup -SearchBase $Searchbase -Filter $Filter -Properties Name, Description

        if ($Match) {
            foreach ($Group in $Groups) {
                if ($Group.Description -match $Pattern) {
                    $Result += $Group
                } #if
            } #foreach
        } else {
            foreach ($Group in $Groups) {
                if ($Group.Description -notmatch $Pattern) {
                    $Result += $Group
                } #if
            } #foreach
        } #if
        $Result
    } #Function