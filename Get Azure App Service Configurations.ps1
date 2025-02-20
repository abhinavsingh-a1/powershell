# Define variables
$appServiceName = "myWebApp"
$resourceGroupName = "myResourceGroup"

# Get app service configuration
Get-AzWebApp -Name $appServiceName -ResourceGroupName $resourceGroupName | Select-Object SiteConfig
