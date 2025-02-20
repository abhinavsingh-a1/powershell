# Define variables
$resourceGroupName = "myResourceGroup"
$aksName = "myAKSCluster"
$location = "eastus"

# Create an AKS cluster
New-AzAksCluster -Name $aksName -ResourceGroupName $resourceGroupName `
  -NodeCount 2 -Location $location
