# Define variables
$resourceGroupName = "myResourceGroup"
$storageAccountName = "mystorageacct123"
$location = "eastus"

# Create a storage account
New-AzStorageAccount -ResourceGroupName $resourceGroupName -Name $storageAccountName `
  -Location $location -SkuName Standard_LRS -Kind StorageV2

# Get the storage account context
$storageAccountKey = (Get-AzStorageAccountKey -ResourceGroupName $resourceGroupName -Name $storageAccountName)[0].Value
$context = New-AzStorageContext -StorageAccountName $storageAccountName -StorageAccountKey $storageAccountKey

# Create a container in the storage account
New-AzStorageContainer -Name "mycontainer" -Context $context -Permission Blob
