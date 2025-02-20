# Define variables
$resourceGroupName = "myResourceGroup"
$logicAppName = "myLogicApp"
$location = "eastus"

# Create a Logic App
New-AzLogicApp -ResourceGroupName $resourceGroupName -Name $logicAppName -Location $location
