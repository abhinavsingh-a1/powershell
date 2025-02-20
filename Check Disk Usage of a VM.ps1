# Define variables
$resourceGroupName = "myResourceGroup"
$vmName = "myVM"

# Get disk information for the VM
Get-AzVM -ResourceGroupName $resourceGroupName -Name $vmName | Select-Object -ExpandProperty StorageProfile | Format-List Disks
