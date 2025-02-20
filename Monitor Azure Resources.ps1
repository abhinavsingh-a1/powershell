# Define variables
$resourceGroupName = "myResourceGroup"
$vmName = "myVM"

# Get CPU usage metrics for a VM
$metrics = Get-AzMetric -ResourceId "/subscriptions/{subscriptionId}/resourceGroups/$resourceGroupName/providers/Microsoft.Compute/virtualMachines/$vmName" `
  -MetricNames "Percentage CPU" -TimeGrain 00:01:00 -StartTime (Get-Date).AddHours(-1) -EndTime (Get-Date)

# Display the metrics
$metrics.Data
