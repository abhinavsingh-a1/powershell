# Define variables
$resourceGroupName = "myResourceGroup"
$namespaceName = "myServiceBusNamespace"
$location = "eastus"

# Create a Service Bus namespace
New-AzServiceBusNamespace -ResourceGroupName $resourceGroupName -Name $namespaceName `
  -Location $location -Sku Standard
