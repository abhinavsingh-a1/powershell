# Define variables
$resourceGroupName = "myResourceGroup"
$nsgName = "myNSG"
$location = "eastus"

# Create an NSG rule to allow RDP
$nsgRule = New-AzNetworkSecurityRuleConfig -Name "AllowRDP" -Protocol Tcp -Direction Inbound `
  -Priority 100 -SourceAddressPrefix Internet -SourcePortRange * `
  -DestinationAddressPrefix * -DestinationPortRange 3389 -Access Allow

# Create the NSG
New-AzNetworkSecurityGroup -Name $nsgName -ResourceGroupName $resourceGroupName `
  -Location $location -SecurityRules $nsgRule
