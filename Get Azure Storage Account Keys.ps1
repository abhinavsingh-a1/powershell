# Define variables
$storageAccountName = "mystorageacct123"
$resourceGroupName = "myResourceGroup"

# Get storage account keys
Get-AzStorageAccountKey -ResourceGroupName $resourceGroupName -Name $storageAccountName
