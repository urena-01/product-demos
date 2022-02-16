Param
(
    [Parameter(Mandatory=$true)]
    [string]$ServiceState
)

Get-Service | Where-Object -FilterScript {$_.Status -eq $ServiceState} | Select-Object -Property 'Name'