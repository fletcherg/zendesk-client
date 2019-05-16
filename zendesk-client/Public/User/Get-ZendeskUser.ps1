function Get-ZendeskUser {
	<#
        .SYNOPSIS
        Get Zendesk user

		.DESCRIPTION
        This function will return the specified Zendesk user.

        .PARAMETER id
        Id of the user to return.
		
        .EXAMPLE
		Get-ZendeskUser -id 4919282
        Will return User with id 4919282
		
        .NOTES
        Date: 16/05/2019

        .LINK
        https://github.com/fletcherg/zendesk-client
	#>
	[CmdletBinding()]
	param(
		[Parameter(Mandatory=$true)]
		[long[]]$id
	)

	$endpoint = "users/$($id).json"
	
	Write-Verbose "Calling ZendeskRequestHandler for endpoint $($endpoint)"
	$output = Invoke-ZendeskRequestHandler -endpoint $endpoint
	
	return $output
		
}

