function Connect-Zendesk {
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

    ## We should make a web request and test
    
    Write-Verbose 'Connection successful.'
}