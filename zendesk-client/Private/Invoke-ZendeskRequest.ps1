function Invoke-ZendeskRequest {
	[CmdletBinding()]
	param(
		[Parameter(Mandatory=$true)]
		[string]$endpoint,
		[string]$method = "GET"
	)

	if (!$global:ZendeskConnection) {
		$ErrorMessage = @()
		$ErrorMessage += "Not connected to a Manage server."
		$ErrorMessage +=  $_.ScriptStackTrace
		$ErrorMessage += ''    
		$ErrorMessage += '--> $ZendeskConnection variable not found.'
		$ErrorMessage += "----> Run 'Connect-Zendesk' to initialize the connection before issuing other Zendesk functions."
		Write-Error ($ErrorMessage | Out-String)
		return
	}

	$headers = @{Authorization = $global:ZendeskConnection.authHeader } 
	$uri = "https://$($global:ZendeskConnection.subdomain).zendesk.com/api/v2/" + $endpoint

	switch ( $method )
	{
		"GET" {
				$output = @()
				do {
					Write-Verbose "Requesting from $($uri)..."
					$result =  (Invoke-RestMethod -Method GET -Uri $uri -Headers $headers)
					if ($result.next_page) {
						$uri = $result.next_page
					} else {
						$uri = $null
					}
					$output += $result
				} while ($uri)
				return $output
		}
		
	}

}