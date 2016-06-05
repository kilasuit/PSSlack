$function = Get-Command -Name New-SlackField
Describe 'New-SlackField Tests' {
   Context 'Parameters for New-SlackField'{
It 'Has a parameter called InputObject' {
            $function.Parameters.Keys.Contains('InputObject') | Should Be 'True'
            }
        It 'InputObject Parameter is Correctly Identified as being Mandatory' {
            $function.Parameters.InputObject.Attributes.Mandatory | Should be 'True'
            }
        It 'InputObject Parameter is of Object[] Type' {
            $function.Parameters.InputObject.ParameterType.FullName | Should be 'System.Object[]'
            }

It 'Has a parameter called Short' {
            $function.Parameters.Keys.Contains('Short') | Should Be 'True'
            }
        It 'Short Parameter is Correctly Identified as being Mandatory' {
            $function.Parameters.Short.Attributes.Mandatory | Should be 'False'
            }
        It 'Short Parameter is of SwitchParameter Type' {
            $function.Parameters.Short.ParameterType.FullName | Should be 'System.Management.Automation.SwitchParameter'
            }

It 'Has a parameter called IncludeProperty' {
            $function.Parameters.Keys.Contains('IncludeProperty') | Should Be 'True'
            }
        It 'IncludeProperty Parameter is Correctly Identified as being Mandatory' {
            $function.Parameters.IncludeProperty.Attributes.Mandatory | Should be 'False'
            }
        It 'IncludeProperty Parameter is of String[] Type' {
            $function.Parameters.IncludeProperty.ParameterType.FullName | Should be 'System.String[]'
            }

It 'Has a parameter called ExcludeProperty' {
            $function.Parameters.Keys.Contains('ExcludeProperty') | Should Be 'True'
            }
        It 'ExcludeProperty Parameter is Correctly Identified as being Mandatory' {
            $function.Parameters.ExcludeProperty.Attributes.Mandatory | Should be 'False'
            }
        It 'ExcludeProperty Parameter is of String[] Type' {
            $function.Parameters.ExcludeProperty.ParameterType.FullName | Should be 'System.String[]'
            }

It 'Has a parameter called MemberType' {
            $function.Parameters.Keys.Contains('MemberType') | Should Be 'True'
            }
        It 'MemberType Parameter is Correctly Identified as being Mandatory' {
            $function.Parameters.MemberType.Attributes.Mandatory | Should be 'False'
            }
        It 'MemberType Parameter is of String[] Type' {
            $function.Parameters.MemberType.ParameterType.FullName | Should be 'System.String[]'
            }

      }

 }


