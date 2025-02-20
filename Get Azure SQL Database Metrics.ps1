# Define variables
$resourceGroupName = "myResourceGroup"
$sqlServerName = "mySqlServer"
$databaseName = "myDatabase"

# Get CPU percentage metric
Get-AzMetric -ResourceId "/subscriptions/{subscriptionId}/resourceGroups/$resourceGroupName/providers/Microsoft.Sql/servers/$sqlServerName/databases/$databaseName" `
  -MetricNames "dtu_consumption_percent" -TimeGrain 00:01:00 -StartTime (Get-Date).AddHours(-1)
