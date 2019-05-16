function Invoke-ZendeskRequest {
<#
.SYNOPSIS
 Invokes actual request to Zendesk API

.PARAMETER parameters
Splat of webrequest parameters, sent from request handler.

#>
	[CmdletBinding()]
	param(
		$parameters
	)


	$pausefor = 0
    do {
        if ($pausefor -gt 0) {
            Write-Verbose -Object "Throttled; backing down for $($pausefor) seconds..."
            Start-Sleep -Seconds $pausefor
            $headers.Calm = $true
        }

		try
		{
			$result = Invoke-WebRequest -UseBasicParsing @parameters
		}
			catch [System.Net.WebException] {
			Write-Error $_.ErrorDetails.Message
			$fail = $true

		}

        if (!$fail) {
        	$ratelimit = $result.Headers['X-Rate-Limit-Remaining']

        	if ([int]$ratelimit -lt 50) {
	            Write-Host -Object "Calm may be needed: rate limit remaining - $($ratelimit)"
        	}

			$pausefor = $result.Headers["Retry-After"]
		}
    } while ($result.StatusCode -eq 429)

	if ($parameters.method -ne "DELETE") {
		return ConvertFrom-Json $result.Content
	}

}
