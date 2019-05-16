function Update-ZendeskOrganization {
	<#
        .SYNOPSIS
        Updates a Zendesk organization

		.DESCRIPTION
        This function will update the specified Zendesk organization

        .PARAMETER id
        id of the organization to 
		
		.PARAMETER orgDetails
		Hash of fields to update
		
        .EXAMPLE		
		$orgDetails = @{'name' = "Acme SomeTestOrg2";
			'notes' = "Something interesting";
			'organization_fields' = @{
			'customfield1' = "OU2"}
			}
			
		Update-ZendeskOrganization -id 4919282 -orgDetails $orgDetails
        
		Will Update organization with id 4919282
		
        .NOTES
        Date: 16/05/2019

        .LINK
        https://github.com/fletcherg/zendesk-client
	#>
	[CmdletBinding()]
	param(
		[Parameter(Mandatory=$true)]
		[long[]]$id,
		[Parameter(Mandatory=$true)]
		$orgDetails
	)

	$endpoint = "organizations/$($id).json"
	$requestBody = (@{'organization' = $orgDetails} | convertto-json -Depth 5)
	
	Write-Verbose "Calling ZendeskRequestHandler for endpoint $($endpoint)"
	$output = Invoke-ZendeskRequestHandler -endpoint $endpoint -requestBody $requestBody -method "PUT"
	
	return $output
		
}

