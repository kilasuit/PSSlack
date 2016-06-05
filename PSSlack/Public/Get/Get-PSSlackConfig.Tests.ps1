$function = Get-Command -Name Get-PSSlackConfig
Describe 'Get-PSSlackConfig Tests' {
   Context 'Parameters for Get-PSSlackConfig'{
It 'Has a parameter called Source' {
            $function.Parameters.Keys.Contains('Source') | Should Be 'True'
            }
        It 'Source Parameter is Correctly Identified as being Mandatory' {
            $function.Parameters.Source.Attributes.Mandatory | Should be 'False'
            }
        It 'Source Parameter is of Object Type' {
            $function.Parameters.Source.ParameterType.FullName | Should be 'System.Object'
            }

      }

 }


