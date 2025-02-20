# Define variables
$resourceGroupName = "myResourceGroup"
$workspaceName = "myDatabricksWorkspace"
$location = "eastus"

# Create a Databricks workspace
New-AzDatabricksWorkspace -Name $workspaceName -ResourceGroupName $resourceGroupName `
  -Location $location -Sku Standard
