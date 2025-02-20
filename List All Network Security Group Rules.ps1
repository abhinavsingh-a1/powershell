# Define variables
$nsgName = "myNSG"
$resourceGroupName = "myResourceGroup"

# Get NSG rules
Get-AzNetworkSecurityGroup -Name $nsgName -ResourceGroupName $resourceGroupName | Get-AzNetworkSecurityRuleConfig
