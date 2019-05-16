function Invoke-ZendeskRequestHandler {
<#
.SYNOPSIS
Wrapper for Invoking Zendesk Requests

.PARAMETER parameters
Splat of webrequest parameters, sent from request handler.

#>
	[CmdletBinding()]
	param(
		[Parameter(Mandatory=$true)]
		[string]$endpoint,
		[string]$method = "GET",
		$requestBody
	)

	if (!$global:ZendeskConnection) {
		$ErrorMessage = @()
		$ErrorMessage += "Not connected to Zendesk API."
		$ErrorMessage +=  $_.ScriptStackTrace
		$ErrorMessage += ''    
		$ErrorMessage += '--> $ZendeskConnection variable not found.'
		$ErrorMessage += "----> Run 'Connect-Zendesk' to initialize the connection before issuing other Zendesk functions."
		Write-Error ($ErrorMessage | Out-String)
		return
	}

	$uri = "https://$($global:ZendeskConnection.subdomain).zendesk.com/api/v2/" + $endpoint

	switch ( $method )
	{
		"GET" {
				$output = @()
				do {
					Write-Verbose "Requesting from $($uri)..."

					$parameters = @{
						Uri         = $Uri
						Method      = "GET"
						Headers     = @{ Authorization = $global:ZendeskConnection.authHeader }
					}

					$result =  Invoke-ZendeskRequest $parameters
					if ($result.next_page) {
						$uri = $result.next_page
					} else {
						$uri = $null
					}
					$output += $result | Expand-ObjectProperty
				} while ($uri)

				return $output

		}

		"POST" {

			if (!$requestBody) {
				$ErrorMessage = @()
				$ErrorMessage += "Nothing posted nothing gained"
				$ErrorMessage +=  $_.ScriptStackTrace
				$ErrorMessage += ''    
				$ErrorMessage += '--> $requestBody not specified'
				$ErrorMessage += "----> :("
				Write-Error ($ErrorMessage | Out-String)
				return
			}

			$parameters = @{
				Uri			= $Uri
				Method      = "POST"
				Headers     = @{ Authorization = $global:ZendeskConnection.authHeader }	
				ContentType = "application/json"
				Body = $requestBody
			}

			$result =  Invoke-ZendeskRequest $parameters

			return $result | Expand-ObjectProperty

		}

		"DELETE" {

			$parameters = @{
				Uri			= $Uri
				Method      = "DELETE"
				Headers     = @{ Authorization = $global:ZendeskConnection.authHeader }	
			}

			$result =  Invoke-ZendeskRequest $parameters

			return $result | Expand-ObjectProperty

		}

		"PUT" {

			$parameters = @{
				Uri			= $Uri
				Method      = "PUT"
				Headers     = @{ Authorization = $global:ZendeskConnection.authHeader }	
				ContentType = "application/json"
				Body = $requestBody
			}

			$result =  Invoke-ZendeskRequest $parameters

			return $result | Expand-ObjectProperty

		}
		
	}

}