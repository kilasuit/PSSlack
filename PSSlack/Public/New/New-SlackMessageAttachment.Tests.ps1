$function = Get-Command -Name New-SlackMessageAttachment
Describe 'New-SlackMessageAttachment Tests' {
   Context 'Parameters for New-SlackMessageAttachment'{
It 'Has a parameter called ExistingAttachment' {
            $function.Parameters.Keys.Contains('ExistingAttachment') | Should Be 'True'
            }
        It 'ExistingAttachment Parameter is Correctly Identified as being Mandatory' {
            $function.Parameters.ExistingAttachment.Attributes.Mandatory | Should be 'False'
            }
        It 'ExistingAttachment Parameter is of Object Type' {
            $function.Parameters.ExistingAttachment.ParameterType.FullName | Should be 'System.Object'
            }

It 'Has a parameter called Fallback' {
            $function.Parameters.Keys.Contains('Fallback') | Should Be 'True'
            }
        It 'Fallback Parameter is Correctly Identified as being Mandatory' {
            $function.Parameters.Fallback.Attributes.Mandatory | Should be 'True'
            }
        It 'Fallback Parameter is of String Type' {
            $function.Parameters.Fallback.ParameterType.FullName | Should be 'System.String'
            }

It 'Has a parameter called Severity' {
            $function.Parameters.Keys.Contains('Severity') | Should Be 'True'
            }
        It 'Severity Parameter is Correctly Identified as being Mandatory' {
            $function.Parameters.Severity.Attributes.Mandatory | Should be 'False'
            }
        It 'Severity Parameter is of String Type' {
            $function.Parameters.Severity.ParameterType.FullName | Should be 'System.String'
            }

It 'Has a parameter called Color' {
            $function.Parameters.Keys.Contains('Color') | Should Be 'True'
            }
        It 'Color Parameter is Correctly Identified as being Mandatory' {
            $function.Parameters.Color.Attributes.Mandatory | Should be 'False'
            }
        It 'Color Parameter is of Object Type' {
            $function.Parameters.Color.ParameterType.FullName | Should be 'System.Object'
            }

It 'Has a parameter called AuthorName' {
            $function.Parameters.Keys.Contains('AuthorName') | Should Be 'True'
            }
        It 'AuthorName Parameter is Correctly Identified as being Mandatory' {
            $function.Parameters.AuthorName.Attributes.Mandatory | Should be 'False'
            }
        It 'AuthorName Parameter is of String Type' {
            $function.Parameters.AuthorName.ParameterType.FullName | Should be 'System.String'
            }

It 'Has a parameter called Pretext' {
            $function.Parameters.Keys.Contains('Pretext') | Should Be 'True'
            }
        It 'Pretext Parameter is Correctly Identified as being Mandatory' {
            $function.Parameters.Pretext.Attributes.Mandatory | Should be 'False'
            }
        It 'Pretext Parameter is of String Type' {
            $function.Parameters.Pretext.ParameterType.FullName | Should be 'System.String'
            }

It 'Has a parameter called AuthorLink' {
            $function.Parameters.Keys.Contains('AuthorLink') | Should Be 'True'
            }
        It 'AuthorLink Parameter is Correctly Identified as being Mandatory' {
            $function.Parameters.AuthorLink.Attributes.Mandatory | Should be 'False'
            }
        It 'AuthorLink Parameter is of String Type' {
            $function.Parameters.AuthorLink.ParameterType.FullName | Should be 'System.String'
            }

It 'Has a parameter called AuthorIcon' {
            $function.Parameters.Keys.Contains('AuthorIcon') | Should Be 'True'
            }
        It 'AuthorIcon Parameter is Correctly Identified as being Mandatory' {
            $function.Parameters.AuthorIcon.Attributes.Mandatory | Should be 'False'
            }
        It 'AuthorIcon Parameter is of String Type' {
            $function.Parameters.AuthorIcon.ParameterType.FullName | Should be 'System.String'
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

It 'Has a parameter called TitleLink' {
            $function.Parameters.Keys.Contains('TitleLink') | Should Be 'True'
            }
        It 'TitleLink Parameter is Correctly Identified as being Mandatory' {
            $function.Parameters.TitleLink.Attributes.Mandatory | Should be 'False'
            }
        It 'TitleLink Parameter is of String Type' {
            $function.Parameters.TitleLink.ParameterType.FullName | Should be 'System.String'
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

It 'Has a parameter called ImageURL' {
            $function.Parameters.Keys.Contains('ImageURL') | Should Be 'True'
            }
        It 'ImageURL Parameter is Correctly Identified as being Mandatory' {
            $function.Parameters.ImageURL.Attributes.Mandatory | Should be 'False'
            }
        It 'ImageURL Parameter is of String Type' {
            $function.Parameters.ImageURL.ParameterType.FullName | Should be 'System.String'
            }

It 'Has a parameter called ThumbURL' {
            $function.Parameters.Keys.Contains('ThumbURL') | Should Be 'True'
            }
        It 'ThumbURL Parameter is Correctly Identified as being Mandatory' {
            $function.Parameters.ThumbURL.Attributes.Mandatory | Should be 'False'
            }
        It 'ThumbURL Parameter is of String Type' {
            $function.Parameters.ThumbURL.ParameterType.FullName | Should be 'System.String'
            }

It 'Has a parameter called Fields' {
            $function.Parameters.Keys.Contains('Fields') | Should Be 'True'
            }
        It 'Fields Parameter is Correctly Identified as being Mandatory' {
            $function.Parameters.Fields.Attributes.Mandatory | Should be 'False'
            }
        It 'Fields Parameter is of Hashtable[] Type' {
            $function.Parameters.Fields.ParameterType.FullName | Should be 'System.Collections.Hashtable[]'
            }

It 'Has a parameter called MarkDownFields' {
            $function.Parameters.Keys.Contains('MarkDownFields') | Should Be 'True'
            }
        It 'MarkDownFields Parameter is Correctly Identified as being Mandatory' {
            $function.Parameters.MarkDownFields.Attributes.Mandatory | Should be 'False'
            }
        It 'MarkDownFields Parameter is of String[] Type' {
            $function.Parameters.MarkDownFields.ParameterType.FullName | Should be 'System.String[]'
            }

      }

 }


