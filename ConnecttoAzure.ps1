# Login to Azure using the interactive login
Connect-AzAccount

# Alternatively, use a service principal for non-interactive authentication
$clientId = "your-client-id"
$clientSecret = "your-client-secret"
$tenantId = "your-tenant-id"
$securePassword = ConvertTo-SecureString $clientSecret -AsPlainText -Force
$psCredential = New-Object System.Management.Automation.PSCredential($clientId, $securePassword)
Connect-AzAccount -ServicePrincipal -Credential $psCredential -TenantId $tenantId
