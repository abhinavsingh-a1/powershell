# Define variables
$resourceGroupName = "myResourceGroup"

# Get all VMs in the resource group
Get-AzVM -ResourceGroupName $resourceGroupName | Format-Table Name, PowerState
