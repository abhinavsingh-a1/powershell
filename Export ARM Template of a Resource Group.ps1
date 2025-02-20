# Define variables
$resourceGroupName = "myResourceGroup"
$outputPath = "C:\Templates\template.json"

# Export the ARM template
Export-AzResourceGroup -ResourceGroupName $resourceGroupName -Path $outputPath
