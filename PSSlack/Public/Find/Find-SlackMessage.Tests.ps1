$function = Get-Command -Name Find-SlackMessage
Describe 'Find-SlackMessage Tests' {
   Context 'Parameters for Find-SlackMessage'{
It 'Has a parameter called Query' {
            $function.Parameters.Keys.Contains('Query') | Should Be 'True'
            }
        It 'Query Parameter is Correctly Identified as being Mandatory' {
            $function.Parameters.Query.Attributes.Mandatory | Should be 'False'
            }
        It 'Query Parameter is of String Type' {
            $function.Parameters.Query.ParameterType.FullName | Should be 'System.String'
            }

It 'Has a parameter called Token' {
            $function.Parameters.Keys.Contains('Token') | Should Be 'True'
            }
        It 'Token Parameter is Correctly Identified as being Mandatory' {
            $function.Parameters.Token.Attributes.Mandatory | Should be 'False'
            }
        It 'Token Parameter is of Object Type' {
            $function.Parameters.Token.ParameterType.FullName | Should be 'System.Object'
            }

It 'Has a parameter called SortDirection' {
            $function.Parameters.Keys.Contains('SortDirection') | Should Be 'True'
            }
        It 'SortDirection Parameter is Correctly Identified as being Mandatory' {
            $function.Parameters.SortDirection.Attributes.Mandatory | Should be 'False'
            }
        It 'SortDirection Parameter is of Object Type' {
            $function.Parameters.SortDirection.ParameterType.FullName | Should be 'System.Object'
            }

It 'Has a parameter called SortBy' {
            $function.Parameters.Keys.Contains('SortBy') | Should Be 'True'
            }
        It 'SortBy Parameter is Correctly Identified as being Mandatory' {
            $function.Parameters.SortBy.Attributes.Mandatory | Should be 'False'
            }
        It 'SortBy Parameter is of Object Type' {
            $function.Parameters.SortBy.ParameterType.FullName | Should be 'System.Object'
            }

It 'Has a parameter called Count' {
            $function.Parameters.Keys.Contains('Count') | Should Be 'True'
            }
        It 'Count Parameter is Correctly Identified as being Mandatory' {
            $function.Parameters.Count.Attributes.Mandatory | Should be 'False'
            }
        It 'Count Parameter is of Int32 Type' {
            $function.Parameters.Count.ParameterType.FullName | Should be 'System.Int32'
            }

It 'Has a parameter called Page' {
            $function.Parameters.Keys.Contains('Page') | Should Be 'True'
            }
        It 'Page Parameter is Correctly Identified as being Mandatory' {
            $function.Parameters.Page.Attributes.Mandatory | Should be 'False'
            }
        It 'Page Parameter is of Int32 Type' {
            $function.Parameters.Page.ParameterType.FullName | Should be 'System.Int32'
            }

It 'Has a parameter called MaxPages' {
            $function.Parameters.Keys.Contains('MaxPages') | Should Be 'True'
            }
        It 'MaxPages Parameter is Correctly Identified as being Mandatory' {
            $function.Parameters.MaxPages.Attributes.Mandatory | Should be 'False'
            }
        It 'MaxPages Parameter is of Int32 Type' {
            $function.Parameters.MaxPages.ParameterType.FullName | Should be 'System.Int32'
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


