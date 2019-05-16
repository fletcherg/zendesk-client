function New-ZendeskUser {
	<#
        .SYNOPSIS
        Create a Zendesk user

        .DESCRIPTION
        This function will create a user in Zendesk. If the user already exists in Zendesk, it will be updated.

        .PARAMETER userDetails
        Hash of relevant user details (refer to zendesk API docs)

        .EXAMPLE
        $userDetails = @{'name' = "Tim Basket";
            'email' = "tim@basket.org";
            'notes' = "somecoolguy"
            'organization' = @{
            'name' = "Acme SomeTestOrg2"}
            }

        New-Zendeskuser -userDetails $userDetails
        Will create the Zendesk user tim@basket.org in the organization "Acme SomeTestOrg"
		
        .NOTES
        Date: 16/05/2019

        .LINK
        https://github.com/fletcherg/zendesk-client
        https://developer.zendesk.com/rest_api/docs/support/users#create-or-update-user
	#>
	[CmdletBinding()]
	param(
		[Parameter(Mandatory=$true)]
		$userDetails
	)

    # should do some sanity checking on $userDetails...

    $endpoint = "users/create_or_update.json"

    #$requestBody = (@{'organization' = @($organization)} | convertto-json -Depth 5)
    $requestBody = (@{'user' = $userDetails} | convertto-json -Depth 5)
    
    Write-Verbose "Calling ZendeskRequestHandler for endpoint $($endpoint)"
	$output = Invoke-ZendeskRequestHandler -endpoint $endpoint -requestBody $requestBody -method "POST"
	
	return $output
		
}



