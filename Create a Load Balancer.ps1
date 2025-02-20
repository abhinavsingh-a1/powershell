# Define variables
$resourceGroupName = "myResourceGroup"
$lbName = "myLoadBalancer"
$location = "eastus"

# Create a frontend IP configuration
$frontendIP = New-AzLoadBalancerFrontendIpConfig -Name "myFrontendIP" `
  -PublicIpAddress $(New-AzPublicIpAddress -Name "myPublicIP" -ResourceGroupName $resourceGroupName -Location $location -AllocationMethod Dynamic)

# Create a backend pool
$backendPool = New-AzLoadBalancerBackendAddressPoolConfig -Name "myBackendPool"

# Create a load balancing rule
$lbRule = New-AzLoadBalancerRuleConfig -Name "HTTP" -FrontendIpConfiguration $frontendIP `
  -BackendAddressPool $backendPool -Protocol Tcp -FrontendPort 80 -BackendPort 80

# Create the load balancer
New-AzLoadBalancer -Name $lbName -ResourceGroupName $resourceGroupName -Location $location `
  -FrontendIpConfiguration $frontendIP -BackendAddressPool $backendPool -LoadBalancingRule $lbRule
