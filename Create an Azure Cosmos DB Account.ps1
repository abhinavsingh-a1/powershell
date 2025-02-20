# Define variables
$resourceGroupName = "myResourceGroup"
$cosmosDbName = "myCosmosDB"
$location = "eastus"

# Create a Cosmos DB account
New-AzCosmosDBAccount -ResourceGroupName $resourceGroupName -Name $cosmosDbName `
  -Location $location -Kind GlobalDocumentDB -ApiKind MongoDB
