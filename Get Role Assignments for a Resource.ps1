# Define variables
$resourceGroupName = "myResourceGroup"

# Get role assignments
Get-AzRoleAssignment -ResourceGroupName $resourceGroupName | Format-Table Scope, RoleDefinitionName, DisplayName
