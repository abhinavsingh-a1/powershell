# Define variables
$resourceGroupName = "myResourceGroup"
$diskName = "myDisk"
$location = "eastus"

# Create a managed disk
New-AzDisk -DiskName $diskName -DiskSizeGB 128 -ResourceGroupName $resourceGroupName `
  -Location $location -CreateOption Empty
