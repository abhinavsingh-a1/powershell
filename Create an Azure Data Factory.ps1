# Define variables
$resourceGroupName = "myResourceGroup"
$dataFactoryName = "myDataFactory"
$location = "eastus"

# Create a Data Factory
Set-AzDataFactoryV2 -ResourceGroupName $resourceGroupName -Name $dataFactoryName -Location $location
