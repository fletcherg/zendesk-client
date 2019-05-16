function New-ZendeskOrganization {
	<#
        .SYNOPSIS
        Create a Zendesk organization

        .DESCRIPTION
        This function will create an organization in Zendesk.

        .PARAMETER organization
        Relevant organization details
		
        .EXAMPLE
        

        $orgDetails = @{'name' = "Acme SomeTestOrg"
            'organization_fields' = @{
            'ad_ou' = "OU";  
            'main_phone' = "211313";  
            'owner_id' = "Peter Pan";
            'reseller_id' = "someReseller";
            'non_account' = 10000213;
            'sf_account_id' = "aXRtERTZX"}
            }

        New-ZendeskOrganization -organization $orgDetails
        Will create the Zendesk organization "Acme SomeTestOrg"

		
        .NOTES
        Date: 16/05/2019

        .LINK
        https://github.com/fletcherg/zendesk-client
	#>
	[CmdletBinding()]
	param(
		[Parameter(Mandatory=$true)]
		$organization
	)

    # should do some sanity checking on $organization...

    $endpoint = "organizations.json"
    #$requestBody = (@{'organization' = @($organization)} | convertto-json -Depth 5)
    $requestBody = (@{'organization' = $organization} | convertto-json -Depth 5)
    
    Write-Verbose "Calling ZendeskRequestHandler for endpoint $($endpoint)"
	$output = Invoke-ZendeskRequestHandler -endpoint $endpoint -requestBody $requestBody -method "POST"
	
	return $output
		
}



