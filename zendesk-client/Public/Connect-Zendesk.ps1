function Connect-Zendesk {
	<#
        .SYNOPSIS
        Connect to Zendesk API

		.DESCRIPTION
        This function will Connect to the Zendesk API with the specified details.

        .PARAMETER subdomain
        Subdomain of your Zendesk tenant
		
        .PARAMETER username
        Username to login with
		
        .PARAMETER token
        API token
		
        .EXAMPLE
		Connect-Zendesk -subdomain "acme" -username "ted.baskets@baskets.at" -token "fjOajsjQOnznJQJnaNZNZNjqkajsJS"
        Connect to Zendesk API with this user

        .NOTES
        Date: 16/05/2019

        .LINK
        https://github.com/fletcherg/zendesk-client
    #>
    [CmdletBinding()]
    param(
        [Parameter(Mandatory=$true)]
        [string]$subdomain,
        [Parameter(Mandatory=$true)]
        [string]$username,
        [Parameter(Mandatory=$true)]
		[string]$token
    )

    $global:ZendeskConnection = @{
        subdomain = $subdomain
		username = $username
        token = $token
		authHeader = "Basic " + [Convert]::ToBase64String([Text.Encoding]::ASCII.GetBytes("$($username)/token:$($token)"))
    }

    Write-Verbose "Testing access. Calling ZendeskRequestHandler for endpoint $($endpoint)"
	$output = Invoke-ZendeskRequestHandler -endpoint "account/settings.json"
    
    if ($output.api) {
        Write-Verbose 'Connection successful.'
    } else {
        Disconnect-Zendesk
        Write-Error "There was an error clearing connecting"
    }
   
}