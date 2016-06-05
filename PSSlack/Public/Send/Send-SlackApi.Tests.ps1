$function = Get-Command -Name Send-SlackApi
Describe 'Send-SlackApi Tests' {
   Context 'Parameters for Send-SlackApi'{
It 'Has a parameter called Method' {
            $function.Parameters.Keys.Contains('Method') | Should Be 'True'
            }
        It 'Method Parameter is Correctly Identified as being Mandatory' {
            $function.Parameters.Method.Attributes.Mandatory | Should be 'True'
            }
        It 'Method Parameter is of String Type' {
            $function.Parameters.Method.ParameterType.FullName | Should be 'System.String'
            }

It 'Has a parameter called Body' {
            $function.Parameters.Keys.Contains('Body') | Should Be 'True'
            }
        It 'Body Parameter is Correctly Identified as being Mandatory' {
            $function.Parameters.Body.Attributes.Mandatory | Should be 'False'
            }
        It 'Body Parameter is of Hashtable Type' {
            $function.Parameters.Body.ParameterType.FullName | Should be 'System.Collections.Hashtable'
            }

It 'Has a parameter called Token' {
            $function.Parameters.Keys.Contains('Token') | Should Be 'True'
            }
        It 'Token Parameter is Correctly Identified as being Mandatory' {
            $function.Parameters.Token.Attributes.Mandatory | Should be 'True'
            }
        It 'Token Parameter is of String Type' {
            $function.Parameters.Token.ParameterType.FullName | Should be 'System.String'
            }

      }

 }


