function Update-ZendeskUser {
	<#
        .SYNOPSIS
        Update a Zendesk user

        .DESCRIPTION
        This function will update a user in Zendesk.

        .PARAMETER id
        Id of the user to update.

        .PARAMETER userDetails
        Hash of relevant user details (refer to zendesk API docs)

        .EXAMPLE
        $userDetails = @{'name' = "Tim Basket";
            'email' = "tim@basket.org";
            'notes' = "somecoolguy"
            'organization' = @{
            'name' = "Acme SomeTestOrg2"}
            }

        Update-ZendeskUser -userDetails $userDetails
        Will create the update user tim@basket.org in the organization "Acme SomeTestOrg"

        .EXAMPLE
        $userDetails = @{'notes' = "he's not that cool"}

        Update-ZendeskUser -userDetails $userDetails -id 360277978295
        Will create the update the notes of the user with id 360277978295.
		
        .NOTES
        Date: 16/05/2019

        .LINK
        https://github.com/fletcherg/zendesk-client
        https://developer.zendesk.com/rest_api/docs/support/users#create-or-update-user
	#>
	[CmdletBinding()]
	param(
		[Parameter(Mandatory=$true)]
        $userDetails,
        [Parameter(Mandatory=$true)]
        [long]$id
	)

    # should do some sanity checking on $userDetails...

    $endpoint = "users/$($id).json"

    $requestBody = (@{'user' = $userDetails} | convertto-json -Depth 5)
    
    Write-Verbose "Calling ZendeskRequestHandler for endpoint $($endpoint)"
	$output = Invoke-ZendeskRequestHandler -endpoint $endpoint -requestBody $requestBody -method "PUT"
	
	return $output
		
}



