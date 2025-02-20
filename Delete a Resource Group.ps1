# Define variables
$resourceGroupName = "myResourceGroup"

# Delete the resource group
Remove-AzResourceGroup -Name $resourceGroupName -Force
