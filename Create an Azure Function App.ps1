# Define variables
$resourceGroupName = "myResourceGroup"
$functionAppName = "myFunctionApp"
$appServicePlanName = "myAppServicePlan"
$storageAccountName = "mystorageacct123"

# Create a Function App
New-AzFunctionApp -Name $functionAppName -ResourceGroupName $resourceGroupName `
  -StorageAccount $storageAccountName -Runtime dotnet -RuntimeVersion ~3 `
  -AppServicePlan $appServicePlanName
