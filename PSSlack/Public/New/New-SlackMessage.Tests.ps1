$function = Get-Command -Name New-SlackMessage
Describe 'New-SlackMessage Tests' {
   Context 'Parameters for New-SlackMessage'{
It 'Has a parameter called Channel' {
            $function.Parameters.Keys.Contains('Channel') | Should Be 'True'
            }
        It 'Channel Parameter is Correctly Identified as being Mandatory' {
            $function.Parameters.Channel.Attributes.Mandatory | Should be 'False'
            }
        It 'Channel Parameter is of String Type' {
            $function.Parameters.Channel.ParameterType.FullName | Should be 'System.String'
            }

It 'Has a parameter called Text' {
            $function.Parameters.Keys.Contains('Text') | Should Be 'True'
            }
        It 'Text Parameter is Correctly Identified as being Mandatory' {
            $function.Parameters.Text.Attributes.Mandatory | Should be 'False'
            }
        It 'Text Parameter is of String Type' {
            $function.Parameters.Text.ParameterType.FullName | Should be 'System.String'
            }

It 'Has a parameter called Username' {
            $function.Parameters.Keys.Contains('Username') | Should Be 'True'
            }
        It 'Username Parameter is Correctly Identified as being Mandatory' {
            $function.Parameters.Username.Attributes.Mandatory | Should be 'False'
            }
        It 'Username Parameter is of String Type' {
            $function.Parameters.Username.ParameterType.FullName | Should be 'System.String'
            }

It 'Has a parameter called IconUrl' {
            $function.Parameters.Keys.Contains('IconUrl') | Should Be 'True'
            }
        It 'IconUrl Parameter is Correctly Identified as being Mandatory' {
            $function.Parameters.IconUrl.Attributes.Mandatory | Should be 'False'
            }
        It 'IconUrl Parameter is of String Type' {
            $function.Parameters.IconUrl.ParameterType.FullName | Should be 'System.String'
            }

It 'Has a parameter called IconEmoji' {
            $function.Parameters.Keys.Contains('IconEmoji') | Should Be 'True'
            }
        It 'IconEmoji Parameter is Correctly Identified as being Mandatory' {
            $function.Parameters.IconEmoji.Attributes.Mandatory | Should be 'False'
            }
        It 'IconEmoji Parameter is of String Type' {
            $function.Parameters.IconEmoji.ParameterType.FullName | Should be 'System.String'
            }

It 'Has a parameter called AsUser' {
            $function.Parameters.Keys.Contains('AsUser') | Should Be 'True'
            }
        It 'AsUser Parameter is Correctly Identified as being Mandatory' {
            $function.Parameters.AsUser.Attributes.Mandatory | Should be 'False'
            }
        It 'AsUser Parameter is of SwitchParameter Type' {
            $function.Parameters.AsUser.ParameterType.FullName | Should be 'System.Management.Automation.SwitchParameter'
            }

It 'Has a parameter called LinkNames' {
            $function.Parameters.Keys.Contains('LinkNames') | Should Be 'True'
            }
        It 'LinkNames Parameter is Correctly Identified as being Mandatory' {
            $function.Parameters.LinkNames.Attributes.Mandatory | Should be 'False'
            }
        It 'LinkNames Parameter is of SwitchParameter Type' {
            $function.Parameters.LinkNames.ParameterType.FullName | Should be 'System.Management.Automation.SwitchParameter'
            }

It 'Has a parameter called Parse' {
            $function.Parameters.Keys.Contains('Parse') | Should Be 'True'
            }
        It 'Parse Parameter is Correctly Identified as being Mandatory' {
            $function.Parameters.Parse.Attributes.Mandatory | Should be 'False'
            }
        It 'Parse Parameter is of String Type' {
            $function.Parameters.Parse.ParameterType.FullName | Should be 'System.String'
            }

It 'Has a parameter called UnfurlLinks' {
            $function.Parameters.Keys.Contains('UnfurlLinks') | Should Be 'True'
            }
        It 'UnfurlLinks Parameter is Correctly Identified as being Mandatory' {
            $function.Parameters.UnfurlLinks.Attributes.Mandatory | Should be 'False'
            }
        It 'UnfurlLinks Parameter is of Boolean Type' {
            $function.Parameters.UnfurlLinks.ParameterType.FullName | Should be 'System.Boolean'
            }

It 'Has a parameter called UnfurlMedia' {
            $function.Parameters.Keys.Contains('UnfurlMedia') | Should Be 'True'
            }
        It 'UnfurlMedia Parameter is Correctly Identified as being Mandatory' {
            $function.Parameters.UnfurlMedia.Attributes.Mandatory | Should be 'False'
            }
        It 'UnfurlMedia Parameter is of Boolean Type' {
            $function.Parameters.UnfurlMedia.ParameterType.FullName | Should be 'System.Boolean'
            }

It 'Has a parameter called Attachments' {
            $function.Parameters.Keys.Contains('Attachments') | Should Be 'True'
            }
        It 'Attachments Parameter is Correctly Identified as being Mandatory' {
            $function.Parameters.Attachments.Attributes.Mandatory | Should be 'False'
            }
        It 'Attachments Parameter is of Hashtable[] Type' {
            $function.Parameters.Attachments.ParameterType.FullName | Should be 'System.Collections.Hashtable[]'
            }

      }

 }


