function Remove-ZendeskOrganization {
	<#
        .SYNOPSIS
        Deletes Zendesk organization

		.DESCRIPTION
        This function will delete the specified Zendesk organization

        .PARAMETER id
        id of the organization to delete
		
        .EXAMPLE
		Remove-ZendeskOrganization -id 4919282
        Will remove Organization with id 4919282
		
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

	$endpoint = "organizations/$($id).json"
	
	Write-Verbose "Calling ZendeskRequestHandler for endpoint $($endpoint)"
	$output = Invoke-ZendeskRequestHandler -endpoint $endpoint -method "DELETE"
	
	return $output
		
}

