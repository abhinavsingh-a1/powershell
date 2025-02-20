# Define variables
$frontDoorName = "myFrontDoor"

# Get health status
Get-AzFrontDoorHealth -ResourceGroupName "myResourceGroup" -Name $frontDoorName
