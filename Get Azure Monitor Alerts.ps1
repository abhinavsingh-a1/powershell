# Get active alerts
Get-AzAlertRule -DetailedOutput | Where-Object { $_.IsIncident -eq $true } | Format-Table Name, IsIncident, State
