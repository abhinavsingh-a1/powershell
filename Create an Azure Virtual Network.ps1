# Define variables
$resourceGroupName = "myResourceGroup"
$vnetName = "myVNet"
$location = "eastus"

# Create a subnet configuration
$subnetConfig = New-AzVirtualNetworkSubnetConfig -Name "mySubnet" -AddressPrefix "10.0.0.0/24"

# Create the virtual network
New-AzVirtualNetwork -Name $vnetName -ResourceGroupName $resourceGroupName -Location $location `
  -AddressPrefix "10.0.0.0/16" -Subnet $subnetConfig
