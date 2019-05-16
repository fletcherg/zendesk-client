function Search-ZendeskUser {
	<#
        .SYNOPSIS
        Searches Zendesk users

		.DESCRIPTION
        Search Zendesk users based on supplied query.

        .PARAMETER query
        Query to search with
		
        .EXAMPLE
		Search-ZendeskUser -query "jdoe"
        Will return all Zendesk users with jdoe in their details.
		
        .NOTES
        Date: 16/05/2019

        .LINK
        https://github.com/fletcherg/zendesk-client
	#>
	[CmdletBinding()]
	param(
		[Parameter(Mandatory=$true)]
		[string]$query
	)

	$endpoint = "users/search.json?query=$($query)"
	
	Write-Verbose "Calling ZendeskRequestHandler for endpoint $($endpoint)"
	$output = Invoke-ZendeskRequestHandler -endpoint $endpoint
	
	return $output
		
}

