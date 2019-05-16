function Remove-ZendeskUser {
	<#
        .SYNOPSIS
        Deletes Zendesk user

		.DESCRIPTION
        This function will delete the specified Zendesk user

        .PARAMETER id
        id of the user to delete
		
        .EXAMPLE
		Remove-ZendeskUser -id 4919282
        Will remove User with id 4919282
		
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
	$output = Invoke-ZendeskRequestHandler -endpoint $endpoint -method "DELETE"
	
	return $output
		
}

