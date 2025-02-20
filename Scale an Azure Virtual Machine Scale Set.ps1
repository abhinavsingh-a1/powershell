# Define variables
$resourceGroupName = "myResourceGroup"
$vmssName = "myVMSS"

# Get the current scale set
$vmss = Get-AzVmss -ResourceGroupName $resourceGroupName -VMScaleSetName $vmssName

# Update the instance count
$vmss.Sku.Capacity = 5
Update-AzVmss -ResourceGroupName $resourceGroupName -Name $vmssName -VirtualMachineScaleSet $vmss
