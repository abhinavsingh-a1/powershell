# Define variables
$resourceGroupName = "myResourceGroup"
$alertName = "myAlert"
$targetResourceId = "/subscriptions/{subscriptionId}/resourceGroups/$resourceGroupName/providers/Microsoft.Compute/virtualMachines/myVM"

# Create an alert rule
Add-AzMetricAlertRule -Name $alertName -ResourceGroupName $resourceGroupName `
  -TargetResourceId $targetResourceId -MetricName "Percentage CPU" -Operator GreaterThan -Threshold 80 `
  -WindowSize 00:05:00 -TimeAggregationOperator Average -Action $(New-AzAlertRuleEmail -SendToServiceOwner)
