$Verbose = @{}
if($env:APPVEYOR_REPO_BRANCH -and $env:APPVEYOR_REPO_BRANCH -notlike "master")
{
    $Verbose.add("Verbose",$True)
}

$PSVersion = $PSVersionTable.PSVersion.Major
$ModuleName = 'PSSlack'
$ModulePath = (Get-Item "$PSScriptRoot\..\$ModuleName").FullName

$TestUri = 'TestUri'
$TestToken = 'TestToken'
$TestArchive = 'TestArchive'

Import-Module $ModulePath -Force

Describe "PSSlack Module PS$PSVersion" {
    Context 'Strict mode' {

        Set-StrictMode -Version latest

        It 'Should load' {
            $Module = Get-Module $ModuleName
            $Module.Name | Should be $ModuleName
            $Commands = $Module.ExportedCommands.Keys
            $Commands -contains 'Find-SlackMessage' | Should Be $True
            $Commands -contains 'Get-PSSlackConfig' | Should Be $True
            $Commands -contains 'Set-PSSlackConfig' | Should Be $True
            $Commands -contains 'New-SlackMessage' | Should Be $True
            $Commands -contains 'New-SlackMessageAttachment' | Should Be $True
            $Commands -contains 'Send-SlackMessage' | Should Be $True
        }

        It 'Should not have empty values in PSSlack.xml' {
            $Config = Import-Clixml $ModulePath\PSSlack.xml
            $Props = $Config.PSObject.Properties.Name
            #Loop is faster but less clear in failed tests.
            $Props -contains 'Uri' | Should be $True
            $Props -contains 'Token' | Should be $True
            $Props -contains 'ArchiveUri' | Should be $True
            $Config.Uri | Should BeNullOrEmpty
            $Config.Token | Should BeNullOrEmpty
            $Config.ArchiveUri | Should BeNullOrEmpty
        }
    }
}

Describe "Set-PSSlackConfig PS$PSVersion" {
    Context 'Strict mode' {

        Set-StrictMode -Version latest

        It 'Should set PSSlack.xml' {
            $Params = @{
                Uri= $TestUri
                Token = $TestToken
                ArchiveUri = $TestArchive 
            }
            Set-PSSlackConfig @params
            $Config = Import-Clixml $ModulePath\PSSlack.xml

            $Config.Uri | Should be 'System.Security.SecureString'
            $Config.Token | Should be 'System.Security.SecureString'
            $Config.ArchiveUri | Should be 'TestArchive'
        }
    }
}

Describe "Get-PSSlackConfig PS$PSVersion" {
    Context 'Strict mode' {

        Set-StrictMode -Version latest

        It 'Should read PSSlack.xml' {
            $Config = Get-PSSlackConfig -Source PSSlack.xml

            $Config.Uri | Should be 'TestUri'
            $Config.Token | Should be 'TestToken'
            $Config.ArchiveUri | Should be 'TestArchive'
        }
        
        It 'Should read PSSlack variable' {
            [pscustomobject]@{
                Uri= $TestUri
                Token = $TestToken
                ArchiveUri = $TestArchive 
            } | Export-Clixml -Path $ModulePath\PSSlack.xml -Force -Confirm:$False

            $Config = Get-PSSlackConfig -Source PSSlack

            $Config.Uri | Should be 'TestUri'
            $Config.Token | Should be 'TestToken'
            $Config.ArchiveUri | Should be 'TestArchive'
        }
    }
}

# Tests have passed, rely on set-psslackconfig...
Set-PSSlackConfig -Uri $null -Token $null -ArchiveUri $null


Describe "Send-SlackMessage PS$PSVersion" {
    InModuleScope $ModuleName {

        Mock -ModuleName PSSlack -CommandName Send-SlackApi {
            [pscustomobject]@{
                PSB = $PSBoundParameters
                Arg = $Args
            }
        }
        Mock -ModuleName PSSlack -CommandName Invoke-RestMethod  {
            [pscustomobject]@{
                PSB = $PSBoundParameters
                Arg = $Args
            }
        }

        It 'Should call Send-SlackApi for token auth' {
            $x = Send-SlackMessage -Token Token -Text 'Hi'
            Assert-MockCalled -ModuleName PSSlack -CommandName Send-SlackApi -Scope Describe
        }

        It 'Should call Invoke-RESTMethod for Uri auth' {
            $x = Send-SlackMessage -Uri Uri -Text 'Hi'
            Assert-MockCalled -ModuleName PSSlack -CommandName Invoke-RestMethod -Scope Describe
        }

        It 'Should not pass parameters if not specified' {
            $x = Send-SlackMessage -Token Token -Text 'Hi'
            $x.arg.count | Should be 6
            $x.arg -contains '-Body:' | Should Be $True
            $x.arg -contains '-Method:' | Should Be $True
            $x.arg -contains '-Token:' | Should Be $True
            $x.arg -contains 'Token' | Should Be $True
            $x.arg -contains 'chat.postMessage' | Should Be $True
        }
    }
}

Remove-Item $ModulePath\PSSlack.xml -force -Confirm:$False
