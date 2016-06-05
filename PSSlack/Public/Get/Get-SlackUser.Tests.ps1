$function = Get-Command -Name Get-SlackUser
Describe 'Get-SlackUser Tests' {
   Context 'Parameters for Get-SlackUser'{
It 'Has a parameter called Token' {
            $function.Parameters.Keys.Contains('Token') | Should Be 'True'
            }
        It 'Token Parameter is Correctly Identified as being Mandatory' {
            $function.Parameters.Token.Attributes.Mandatory | Should be 'False'
            }
        It 'Token Parameter is of String Type' {
            $function.Parameters.Token.ParameterType.FullName | Should be 'System.String'
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

It 'Has a parameter called Presence' {
            $function.Parameters.Keys.Contains('Presence') | Should Be 'True'
            }
        It 'Presence Parameter is Correctly Identified as being Mandatory' {
            $function.Parameters.Presence.Attributes.Mandatory | Should be 'False'
            }
        It 'Presence Parameter is of SwitchParameter Type' {
            $function.Parameters.Presence.ParameterType.FullName | Should be 'System.Management.Automation.SwitchParameter'
            }

It 'Has a parameter called ExcludeBots' {
            $function.Parameters.Keys.Contains('ExcludeBots') | Should Be 'True'
            }
        It 'ExcludeBots Parameter is Correctly Identified as being Mandatory' {
            $function.Parameters.ExcludeBots.Attributes.Mandatory | Should be 'False'
            }
        It 'ExcludeBots Parameter is of SwitchParameter Type' {
            $function.Parameters.ExcludeBots.ParameterType.FullName | Should be 'System.Management.Automation.SwitchParameter'
            }

      }

 }


