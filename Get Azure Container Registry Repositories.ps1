# Define variables
$registryName = "myContainerRegistry"

# Get repositories
Invoke-AzContainerRegistryCommand -RegistryName $registryName -Command "acr repository list --name $registryName"
