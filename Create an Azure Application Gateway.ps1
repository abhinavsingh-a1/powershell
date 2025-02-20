# Define variables
$resourceGroupName = "myResourceGroup"
$gatewayName = "myAppGateway"
$location = "eastus"

# Create an Application Gateway
New-AzApplicationGateway -Name $gatewayName -ResourceGroupName $resourceGroupName `
  -Location $location -Sku "Standard_v2" -Tier "Standard_v2"
