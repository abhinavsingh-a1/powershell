# Define variables
$resourceGroupName = "myResourceGroup"
$location = "eastus"
$appServicePlanName = "myAppServicePlan"
$webAppName = "myWebApp"

# Create an App Service Plan
New-AzAppServicePlan -ResourceGroupName $resourceGroupName -Name $appServicePlanName `
  -Location $location -Tier "Basic" -WorkerSize "Small"

# Create a Web App
New-AzWebApp -ResourceGroupName $resourceGroupName -Name $webAppName `
  -Location $location -AppServicePlan $appServicePlanName
