# Define variables
$resourceGroupName = "myResourceGroup"
$apiManagementName = "myApiManagement"
$location = "eastus"

# Create an API Management instance
New-AzApiManagement -ResourceGroupName $resourceGroupName -Name $apiManagementName `
  -Location $location -PublisherEmail "admin@example.com" -PublisherName "Admin"
