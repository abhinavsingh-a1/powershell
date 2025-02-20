# Define variables
$sourceResourceId = "/subscriptions/{subscriptionId}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/virtualMachines/sourceVM"
$destinationResourceId = "/subscriptions/{subscriptionId}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/virtualMachines/destinationVM"

# Test connectivity
Test-AzNetworkConnection -SourceResourceId $sourceResourceId -DestinationResourceId $destinationResourceId
