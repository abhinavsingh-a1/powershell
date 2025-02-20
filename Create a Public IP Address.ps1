# Define variables
$resourceGroupName = "myResourceGroup"
$publicIpName = "myPublicIP"
$location = "eastus"

# Create a public IP address
New-AzPublicIpAddress -Name $publicIpName -ResourceGroupName $resourceGroupName `
  -Location $location -AllocationMethod Dynamic
