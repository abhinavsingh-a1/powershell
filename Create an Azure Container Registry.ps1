# Define variables
$resourceGroupName = "myResourceGroup"
$registryName = "myContainerRegistry"
$location = "eastus"

# Create a container registry
New-AzContainerRegistry -Name $registryName -ResourceGroupName $resourceGroupName `
  -Location $location -Sku Basic
