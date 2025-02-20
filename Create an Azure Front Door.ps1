# Define variables
$resourceGroupName = "myResourceGroup"
$frontDoorName = "myFrontDoor"

# Create a Front Door
New-AzFrontDoor -ResourceGroupName $resourceGroupName -Name $frontDoorName `
  -BackendAddress "example.com" -RoutingRuleName "myRoutingRule" -FrontendEndpointName "myFrontendEndpoint"
