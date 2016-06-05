$function = Get-Command -Name Set-PSSlackConfig
Describe 'Set-PSSlackConfig Tests' {
   Context 'Parameters for Set-PSSlackConfig'{
It 'Has a parameter called Uri' {
            $function.Parameters.Keys.Contains('Uri') | Should Be 'True'
            }
        It 'Uri Parameter is Correctly Identified as being Mandatory' {
            $function.Parameters.Uri.Attributes.Mandatory | Should be 'False'
            }
        It 'Uri Parameter is of String Type' {
            $function.Parameters.Uri.ParameterType.FullName | Should be 'System.String'
            }

It 'Has a parameter called Token' {
            $function.Parameters.Keys.Contains('Token') | Should Be 'True'
            }
        It 'Token Parameter is Correctly Identified as being Mandatory' {
            $function.Parameters.Token.Attributes.Mandatory | Should be 'False'
            }
        It 'Token Parameter is of String Type' {
            $function.Parameters.Token.ParameterType.FullName | Should be 'System.String'
            }

It 'Has a parameter called ArchiveUri' {
            $function.Parameters.Keys.Contains('ArchiveUri') | Should Be 'True'
            }
        It 'ArchiveUri Parameter is Correctly Identified as being Mandatory' {
            $function.Parameters.ArchiveUri.Attributes.Mandatory | Should be 'False'
            }
        It 'ArchiveUri Parameter is of String Type' {
            $function.Parameters.ArchiveUri.ParameterType.FullName | Should be 'System.String'
            }

      }

 }


