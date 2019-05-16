function Connect-Zendesk {
    [CmdletBinding()]
    param(
        [Parameter(Mandatory=$true)]
        [string]$subdomain,
        [Parameter(Mandatory=$true)]
        [string]$username,
        [Parameter(Mandatory=$true)]
		[string]$token,
        [switch]$Force
    )

    $global:ZendeskConnection = @{}
    $global:ZendeskConnection = @{
        subdomain = $subdomain
		username = $username + "/token"
        token = $token
		authHeader = "Basic " + [Convert]::ToBase64String([Text.Encoding]::ASCII.GetBytes("$($username):$($token)"))
    }
    Write-Verbose 'Connection successful.'
}