$function = Get-Command -Name Send-SlackFile
Describe 'Send-SlackFile Tests' {
   Context 'Parameters for Send-SlackFile'{
It 'Has a parameter called Token' {
            $function.Parameters.Keys.Contains('Token') | Should Be 'True'
            }
        It 'Token Parameter is Correctly Identified as being Mandatory' {
            $function.Parameters.Token.Attributes.Mandatory | Should be 'False'
            }
        It 'Token Parameter is of String Type' {
            $function.Parameters.Token.ParameterType.FullName | Should be 'System.String'
            }

It 'Has a parameter called Content' {
            $function.Parameters.Keys.Contains('Content') | Should Be 'True'
            }
        It 'Content Parameter is Correctly Identified as being Mandatory' {
            $function.Parameters.Content.Attributes.Mandatory | Should be 'True'
            }
        It 'Content Parameter is of String Type' {
            $function.Parameters.Content.ParameterType.FullName | Should be 'System.String'
            }

It 'Has a parameter called FileType' {
            $function.Parameters.Keys.Contains('FileType') | Should Be 'True'
            }
        It 'FileType Parameter is Correctly Identified as being Mandatory' {
            $function.Parameters.FileType.Attributes.Mandatory | Should be 'False'
            }
        It 'FileType Parameter is of String Type' {
            $function.Parameters.FileType.ParameterType.FullName | Should be 'System.String'
            }

It 'Has a parameter called Channel' {
            $function.Parameters.Keys.Contains('Channel') | Should Be 'True'
            }
        It 'Channel Parameter is Correctly Identified as being Mandatory' {
            $function.Parameters.Channel.Attributes.Mandatory | Should be 'False'
            }
        It 'Channel Parameter is of String[] Type' {
            $function.Parameters.Channel.ParameterType.FullName | Should be 'System.String[]'
            }

It 'Has a parameter called FileName' {
            $function.Parameters.Keys.Contains('FileName') | Should Be 'True'
            }
        It 'FileName Parameter is Correctly Identified as being Mandatory' {
            $function.Parameters.FileName.Attributes.Mandatory | Should be 'False'
            }
        It 'FileName Parameter is of String Type' {
            $function.Parameters.FileName.ParameterType.FullName | Should be 'System.String'
            }

It 'Has a parameter called Title' {
            $function.Parameters.Keys.Contains('Title') | Should Be 'True'
            }
        It 'Title Parameter is Correctly Identified as being Mandatory' {
            $function.Parameters.Title.Attributes.Mandatory | Should be 'False'
            }
        It 'Title Parameter is of String Type' {
            $function.Parameters.Title.ParameterType.FullName | Should be 'System.String'
            }

It 'Has a parameter called Comment' {
            $function.Parameters.Keys.Contains('Comment') | Should Be 'True'
            }
        It 'Comment Parameter is Correctly Identified as being Mandatory' {
            $function.Parameters.Comment.Attributes.Mandatory | Should be 'False'
            }
        It 'Comment Parameter is of String Type' {
            $function.Parameters.Comment.ParameterType.FullName | Should be 'System.String'
            }

      }

 }


