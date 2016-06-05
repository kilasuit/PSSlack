$function = Get-Command -Name Get-SlackHistory
Describe 'Get-SlackHistory Tests' {
   Context 'Parameters for Get-SlackHistory'{
It 'Has a parameter called Token' {
            $function.Parameters.Keys.Contains('Token') | Should Be 'True'
            }
        It 'Token Parameter is Correctly Identified as being Mandatory' {
            $function.Parameters.Token.Attributes.Mandatory | Should be 'False'
            }
        It 'Token Parameter is of Object Type' {
            $function.Parameters.Token.ParameterType.FullName | Should be 'System.Object'
            }

It 'Has a parameter called ChannelID' {
            $function.Parameters.Keys.Contains('ChannelID') | Should Be 'True'
            }
        It 'ChannelID Parameter is Correctly Identified as being Mandatory' {
            $function.Parameters.ChannelID.Attributes.Mandatory | Should be 'False'
            }
        It 'ChannelID Parameter is of String[] Type' {
            $function.Parameters.ChannelID.ParameterType.FullName | Should be 'System.String[]'
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

It 'Has a parameter called Inclusive' {
            $function.Parameters.Keys.Contains('Inclusive') | Should Be 'True'
            }
        It 'Inclusive Parameter is Correctly Identified as being Mandatory' {
            $function.Parameters.Inclusive.Attributes.Mandatory | Should be 'False'
            }
        It 'Inclusive Parameter is of SwitchParameter Type' {
            $function.Parameters.Inclusive.ParameterType.FullName | Should be 'System.Management.Automation.SwitchParameter'
            }

It 'Has a parameter called Before' {
            $function.Parameters.Keys.Contains('Before') | Should Be 'True'
            }
        It 'Before Parameter is Correctly Identified as being Mandatory' {
            $function.Parameters.Before.Attributes.Mandatory | Should be 'False'
            }
        It 'Before Parameter is of DateTime Type' {
            $function.Parameters.Before.ParameterType.FullName | Should be 'System.DateTime'
            }

It 'Has a parameter called After' {
            $function.Parameters.Keys.Contains('After') | Should Be 'True'
            }
        It 'After Parameter is Correctly Identified as being Mandatory' {
            $function.Parameters.After.Attributes.Mandatory | Should be 'False'
            }
        It 'After Parameter is of DateTime Type' {
            $function.Parameters.After.ParameterType.FullName | Should be 'System.DateTime'
            }

It 'Has a parameter called Paging' {
            $function.Parameters.Keys.Contains('Paging') | Should Be 'True'
            }
        It 'Paging Parameter is Correctly Identified as being Mandatory' {
            $function.Parameters.Paging.Attributes.Mandatory | Should be 'False'
            }
        It 'Paging Parameter is of SwitchParameter Type' {
            $function.Parameters.Paging.ParameterType.FullName | Should be 'System.Management.Automation.SwitchParameter'
            }

It 'Has a parameter called MaxQueries' {
            $function.Parameters.Keys.Contains('MaxQueries') | Should Be 'True'
            }
        It 'MaxQueries Parameter is Correctly Identified as being Mandatory' {
            $function.Parameters.MaxQueries.Attributes.Mandatory | Should be 'False'
            }
        It 'MaxQueries Parameter is of Int32 Type' {
            $function.Parameters.MaxQueries.ParameterType.FullName | Should be 'System.Int32'
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


