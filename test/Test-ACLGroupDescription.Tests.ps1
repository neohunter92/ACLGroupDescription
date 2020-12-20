BeforeAll {
    $Path = ($PSScriptRoot | Split-Path) + "\ACLGroupDescription.psd1"
}

Describe 'Test-ACLGroupDescription Manifest Tests' {
    It 'Passes Test-ModuleManifest' {
        Test-ModuleManifest -Path $Path | Should -not -beNullOrEmpty
    }
}

Describe 'Mandatory paramters' {
    BeforeAll {
        $Script =  ($PSScriptRoot | Split-Path) + "\Test-ACLGRoupDescription.ps1"
        . $Script
        $Searchbase = "OU=Users, DC=Contoso, DC=Com"
        $Pattern = '([A-Z])\w+'
        $Filter = '*'
        function Test-ACLGroupDescription {
            @{
                Searchbase = $Searchbase
                Pattern = $Pattern
                Filter = $Filter
            }
        }
        $Description = Test-ACLGroupDescription
    }
    It 'Description parameter should not be null' {
        $Description | Should -Not -BeNullOrEmpty
    }
    It 'Parameter searchbase must be $Searchbase'{
        $Description.Searchbase | Should -Be $Searchbase
    }
    It 'Parameter pattern should be $pattern'{
        $Description.Pattern | Should -be $Pattern
    }
    It 'Parameter filter should be $Filter'{
        $Description.Filter | Should -be $Filter
    }
}

Describe 'Result' {
    BeforeAll{
        function Test-ACLGRoupDescription () {'Object'}
    }
    It 'Result return Object'{
        Mock Test-ACLGroupDescription {'Object'}
        Test-ACLGroupDescription | Should -Be 'Object'
    }
}