# Define variables
$resourceGroupName = "myResourceGroup"
$namespaceName = "myEventHubNamespace"
$location = "eastus"

# Create an Event Hub namespace
New-AzEventHubNamespace -ResourceGroupName $resourceGroupName -Name $namespaceName `
  -Location $location -Sku Standard
