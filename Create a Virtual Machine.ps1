# Define variables
$resourceGroupName = "myResourceGroup"
$vmName = "myVM"
$location = "eastus"
$adminUsername = "azureuser"
$adminPassword = ConvertTo-SecureString "P@ssw0rd!" -AsPlainText -Force

# Create a subnet configuration
$subnetConfig = New-AzVirtualNetworkSubnetConfig -Name "mySubnet" -AddressPrefix "10.0.0.0/24"

# Create a virtual network
$vnet = New-AzVirtualNetwork -ResourceGroupName $resourceGroupName -Location $location `
  -Name "myVNet" -AddressPrefix "10.0.0.0/16" -Subnet $subnetConfig

# Create a public IP address
$pip = New-AzPublicIpAddress -ResourceGroupName $resourceGroupName -Location $location `
  -Name "myPublicIP" -AllocationMethod Dynamic

# Create a network interface
$nsgRule = New-AzNetworkSecurityRuleConfig -Name "AllowRDP" -Protocol Tcp -Direction Inbound `
  -Priority 1000 -SourceAddressPrefix Internet -SourcePortRange * `
  -DestinationAddressPrefix * -DestinationPortRange 3389 -Access Allow

$nsg = New-AzNetworkSecurityGroup -ResourceGroupName $resourceGroupName -Location $location `
  -Name "myNSG" -SecurityRules $nsgRule

$nic = New-AzNetworkInterface -Name "myNIC" -ResourceGroupName $resourceGroupName -Location $location `
  -SubnetId $vnet.Subnets[0].Id -PublicIpAddressId $pip.Id -NetworkSecurityGroupId $nsg.Id

# Create a virtual machine configuration
$vmConfig = New-AzVMConfig -VMName $vmName -VMSize "Standard_DS1_v2" | `
  Set-AzVMOperatingSystem -Windows -ComputerName $vmName -Credential (New-Object System.Management.Automation.PSCredential ($adminUsername, $adminPassword)) | `
  Set-AzVMSourceImage -PublisherName "MicrosoftWindowsServer" -Offer "WindowsServer" -Sku "2019-Datacenter" -Version "latest" | `
  Add-AzVMNetworkInterface -Id $nic.Id

# Create the virtual machine
New-AzVM -ResourceGroupName $resourceGroupName -Location $location -VM $vmConfig
