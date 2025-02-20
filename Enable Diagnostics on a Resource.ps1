# Define variables
$resourceId = "/subscriptions/{subscriptionId}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/virtualMachines/myVM"
$logAnalyticsWorkspaceId = "/subscriptions/{subscriptionId}/resourceGroups/myResourceGroup/providers/Microsoft.OperationalInsights/workspaces/myWorkspace"

# Enable diagnostics
Set-AzDiagnosticSetting -Name "myDiagnostics" -ResourceId $resourceId `
  -WorkspaceId $logAnalyticsWorkspaceId -Enabled $true
