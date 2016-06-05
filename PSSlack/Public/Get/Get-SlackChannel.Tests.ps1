$function = Get-Command -Name Get-SlackChannel
Describe 'Get-SlackChannel Tests' {
   Context 'Parameters for Get-SlackChannel'{
It 'Has a parameter called Token' {
            $function.Parameters.Keys.Contains('Token') | Should Be 'True'
            }
        It 'Token Parameter is Correctly Identified as being Mandatory' {
            $function.Parameters.Token.Attributes.Mandatory | Should be 'False'
            }
        It 'Token Parameter is of Object Type' {
            $function.Parameters.Token.ParameterType.FullName | Should be 'System.Object'
            }

It 'Has a parameter called Name' {
            $function.Parameters.Keys.Contains('Name') | Should Be 'True'
            }
        It 'Name Parameter is Correctly Identified as being Mandatory' {
            $function.Parameters.Name.Attributes.Mandatory | Should be 'False'
            }
        It 'Name Parameter is of String[] Type' {
            $function.Parameters.Name.ParameterType.FullName | Should be 'System.String[]'
            }

It 'Has a parameter called ExcludeArchived' {
            $function.Parameters.Keys.Contains('ExcludeArchived') | Should Be 'True'
            }
        It 'ExcludeArchived Parameter is Correctly Identified as being Mandatory' {
            $function.Parameters.ExcludeArchived.Attributes.Mandatory | Should be 'False'
            }
        It 'ExcludeArchived Parameter is of SwitchParameter Type' {
            $function.Parameters.ExcludeArchived.ParameterType.FullName | Should be 'System.Management.Automation.SwitchParameter'
            }

It 'Has a parameter called Raw' {
            $function.Parameters.Keys.Contains('Raw') | Should Be 'True'
            }
        It 'Raw Parameter is Correctly Identified as being Mandatory' {
            $function.Parameters.Raw.Attributes.Mandatory | Should be 'False'
            }
        It 'Raw Parameter is of SwitchParameter Type' {
            $function.Parameters.Raw.ParameterType.FullName | Should be 'System.Management.Automation.SwitchParameter'
            }

      }

 }


