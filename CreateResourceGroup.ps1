# Define variables
$resourceGroupName = "myResourceGroup"
$location = "eastus"

# Create a resource group
New-AzResourceGroup -Name $resourceGroupName -Location $location
