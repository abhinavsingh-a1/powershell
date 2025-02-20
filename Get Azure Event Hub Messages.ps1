# Define variables
$namespaceName = "myEventHubNamespace"
$eventHubName = "myEventHub"
$consumerGroupName = "$Default"

# Get messages
Receive-AzEventHubMessage -NamespaceName $namespaceName -EventHubName $eventHubName -ConsumerGroupName $consumerGroupName
