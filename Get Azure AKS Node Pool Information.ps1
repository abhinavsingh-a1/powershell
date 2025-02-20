# Define variables
$aksName = "myAKSCluster"
$resourceGroupName = "myResourceGroup"

# Get node pool info
Get-AzAksNodePool -ResourceGroupName $resourceGroupName -ClusterName $aksName
