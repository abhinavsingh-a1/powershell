# Define variables
$resourceGroupName = "myResourceGroup"
$redisCacheName = "myRedisCache"
$location = "eastus"

# Create a Redis Cache
New-AzRedisCache -ResourceGroupName $resourceGroupName -Name $redisCacheName `
  -Location $location -Sku Basic -Size C1
