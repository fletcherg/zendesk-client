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


	do {
        try
        {
			$result = Invoke-WebRequest -UseBasicParsing @parameters
            $done = $true;
        }
        catch [Microsoft.PowerShell.Commands.HttpResponseException]
        {
            if($_.Exception.Response.StatusCode -eq 429)
            {
                [int] $delay = [int](($_.Exception.Response.Headers | Where-Object Key -eq 'Retry-After').Value[0])
                Write-Verbose -Message "Retry Caught, delaying $delay ms"
                Start-Sleep -Milliseconds $delay
            }
            else
            {
                Throw $_
            }
        }
        catch [System.Net.WebException]
        {
            if ($_.Exception.Response)
            {
                $exceptionStream = $_.Exception.Response.GetResponseStream()
                $streamReader = New-Object -TypeName System.IO.StreamReader -ArgumentList $exceptionStream
                $exceptionResponse = $streamReader.ReadToEnd()
                if ($exceptionResponse)
                {
                    Write-Verbose -Message $exceptionResponse
                }
            }
            Throw $_
        }
        catch
        {
            Throw $_
        }
    } while ($done -ne $true)

	return $result | ConvertFrom-JSON

}