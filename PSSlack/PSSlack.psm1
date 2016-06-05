$Here = Split-Path -Parent $MyInvocation.MyCommand.Path
$PublicModules = Get-ChildItem "$here\Public" -Filter '*.ps1' -Recurse | Where-Object {$_.name -NotMatch "Tests.ps1"}
$PrivateModules = Get-ChildItem "$here\Private" -Filter '*.ps1' -Recurse | Where-Object {$_.name -NotMatch "Tests.ps1"}

foreach($module in $Publicmodules) { . $module.FullName  }

foreach($module in $Privatemodules) { . $module.fullname}


#Create / Read config
    if(-not (Test-Path -Path "$here\PSSlack.xml" -ErrorAction SilentlyContinue))
    {
        Try
        {
            Write-Warning "Did not find config file $here\PSSlack.xml, attempting to create"
            [pscustomobject]@{
                Uri = $null
                Token = $null
                ArchiveUri = $null
            } | Export-Clixml -Path "$here\PSSlack.xml" -Force -ErrorAction Stop
        }
        Catch
        {
            Write-Warning "Failed to create config file $here\PSSlack.xml: $_"
        }
    }

#Initialize the config variable.  I know, I know...
    Try
    {
        #Import the config
        $PSSlack = $null
        $PSSlack = Get-PSSlackConfig -Source PSSlack.xml -ErrorAction Stop

    }
    Catch
    {   
        Write-Warning "Error importing PSSlack config: $_"
    }

Export-ModuleMember -Function $Public.Basename