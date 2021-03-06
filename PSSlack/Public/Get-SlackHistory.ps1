﻿function Get-SlackHistory {
    <#
    .SYNOPSIS
        Get history from a Slack channel

    .DESCRIPTION
        Get history from a Slack channel

    .PARAMETER Token
        Specify a token for authorization.

        See 'Authentication' section here for more information: https://api.slack.com/web
        Test tokens are a simple way to use this

    .PARAMETER Id
        One or more channel IDs to extract history from.

    .PARAMETER Before
        Return history from before this date

    .PARAMETER After
        Return history from after this date

    .PARAMETER Inclusive
        If specified, include history from the date specified in Before and/or After parameters

    .PARAMETER Count
        Number of messages to return per query.  Defaults to 100.  Max 1000

    .PARAMETER Paging
        If specified, and more data is available with a given 'Count', continue querying Slack until
            we have retrieved all the data available.

        WARNING: This parameter is experimental

    .PARAMETER MaxQueries
        Limit the count of API queries to this number.  Only used if you enable -Paging

    .PARAMETER Raw
        If specified, we provide raw output and do not parse any responses

    .FUNCTIONALITY
        Slack
    #>
    [cmdletbinding()]
    param (
        $Token = $Script:PSSlack.Token,
        [parameter( ValueFromPipelineByPropertyName = $True)] # a bit iffy... ID is common...
        [Alias('ID')]
        [string[]]$ChannelID,

        [ValidateRange(1,1000)]
        [int]$Count = 100,
        [switch]$Inclusive,
        [datetime]$Before,
        [datetime]$After,
        [switch]$Paging,
        [int]$MaxQueries,
        [switch]$Raw

    )
    begin
    {
        function Get-UnixTime {
            param($Date)
            $unixEpochStart = new-object DateTime 1970,1,1,0,0,0,([DateTimeKind]::Utc)
            [int]($Date.ToUniversalTime() - $unixEpochStart).TotalSeconds
        }

        Write-Verbose "$($PSBoundParameters | Out-String)"

        $body = @{
            channel = $null
            count = $count
        }
        if($PSBoundParameters.ContainsKey('Before'))
        {
            $BeforeTS = Get-UnixTime -Date $Before
            $body.add('latest', $BeforeTS)
        }
        if($PSBoundParameters.ContainsKey('After'))
        {
            $AfterTS = Get-UnixTime -Date $After
            $body.add('oldest', $AfterTS)
        }
        if($Inclusive)
        {
            $body.add('inclusive', 1)
        }
        $params = @{
            Token = $Token
            Method = 'channels.history'
            Body = $body
        }
        $Queries = 1

    }
    process
    {
        foreach($ID in $ChannelID)
        {
            $has_more = $false
            $Params.body.channel = $ID
            do
            {
                if($has_more)
                {
                    if($Params.Body.oldest)
                    {
                        [void]$Params.Body.remove('oldest')
                    }
                    $Params.body.latest = $ts
                    $has_more = $false
                    Write-Debug "Body is now:$($params.body | out-string)"
                }
                $response = Send-SlackApi @params

                Write-Debug "$($Response | Format-List -Property * | Out-String)"

                if ($response.ok)
                {

                    if($response.psobject.properties.name -contains 'has_more' -and $response.has_more)
                    {
                        Write-Debug 'Paging engaged!'
                        $has_more = $true
                        $ts = $response.messages[-1].ts
                    }

                    if($Raw)
                    {
                        $link = "$($Script:PSSlack.ArchiveUri)/$($response.channel)/p$($response.ts -replace '\.')"
                        $response | Add-Member -MemberType NoteProperty -Name link -Value $link
                        $response
                    }
                    else
                    {
                        Parse-SlackMessage -InputObject $Response
                    }
                }
                else 
                {
                    $response
                }
                $Queries++
            }
            until (
                -not $Paging -or
                -not $has_more -or
                ($MaxQueries -and $Queries -gt $MaxQueries)
            )
        }
    }
}