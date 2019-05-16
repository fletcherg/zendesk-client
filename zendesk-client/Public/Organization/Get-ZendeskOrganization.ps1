function Get-ZendeskOrganization {
	<#
        .SYNOPSIS
        Get Zendesk organizations

		.DESCRIPTION
        This function will return either all Zendesk organizations, or just the organization as specified.

        .PARAMETER id
        If specified, only return this specific organization
		
        .PARAMETER startsWith
        If specified, return organizations starting with this string
		
        .EXAMPLE
		Get-ZendeskOrganization
        Will return all Zendesk Organizations

		.EXAMPLE
		Get-ZendeskOrganization -id 4919282
        Will return Organization with id 4919282
		
		.EXAMPLE
		Get-ZendeskOrganization -startsWith Acme
        Will return Organizations that strat with Acme
		
        .NOTES
        Date: 16/05/2019

        .LINK
        https://github.com/fletcherg/zendesk-client
	#>
	[CmdletBinding()]
	param(
		[long[]]$id,
		[string]$startswith
	)

	if ($id) {
		
		$endpoint = "organizations/$($id).json"
		Write-Verbose "Calling ZendeskRequest for endpoint $($endpoint)"
		$output = Invoke-ZendeskRequest -endpoint $endpoint
		
		return $output.organization
		
	} elseif ($startswith) {
		
		$endpoint = "organizations/autocomplete.json?name=$($startsWith)"
		Write-Verbose "Calling ZendeskRequest for endpoint $($endpoint)"
		$output = Invoke-ZendeskRequest -endpoint $endpoint
		
		return $output.organizations
		
	} else {
		
		$endpoint = "organizations.json"
		Write-Verbose "Calling ZendeskRequest for endpoint $($endpoint)"
		$output = Invoke-ZendeskRequest -endpoint $endpoint
		
		return $output.organizations
		
	}
}

