function Disconnect-Zendesk {
	<#
        .SYNOPSIS
        Disconnect from Zendesk

		.DESCRIPTION
        This function will remove Zendesk connection variables.
		
        .EXAMPLE
		Disconnect-Zendesk
        Disconnect from Zendesk API.

        .NOTES
        Date: 16/05/2019

        .LINK
        https://github.com/fletcherg/zendesk-client
    #>
    [CmdletBinding()]
    param()
    $null = Remove-Variable -Name ZendeskConnection -Scope global -Force -Confirm:$false -ErrorAction SilentlyContinue
    if($ZendeskConnection -or $global:ZendeskConnection) {
        Write-Error "There was an error clearing connection information.`n$($Error[0])"
    } else {
        Write-Verbose 'Disconnect-Zendesk $ZendeskConnection, variable removed.'
    }
}