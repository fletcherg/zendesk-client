function Disconnect-Zendesk {
    [CmdletBinding()]
    param()
    $null = Remove-Variable -Name ZendeskConnection -Scope global -Force -Confirm:$false -ErrorAction SilentlyContinue
    if($ZendeskConnection -or $global:ZendeskConnection) {
        Write-Error "There was an error clearing connection information.`n$($Error[0])"
    } else {
        Write-Verbose 'Disconnect-Zendesk $ZendeskConnection, variable removed.'
    }
}