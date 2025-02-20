# Define variables
$resourceGroupName = "myResourceGroup"
$location = "eastus"
$sqlServerName = "mySqlServer"
$databaseName = "myDatabase"
$adminLogin = "sqladmin"
$adminPassword = "StrongP@ssw0rd!"

# Create an Azure SQL Server
.New-AzSqlServer -ResourceGroupName $resourceGroupName -ServerName $sqlServerName -Location $location `
  -SqlAdministratorCredentials $(New-Object System.Management.Automation.PSCredential ($adminLogin, $(ConvertTo-SecureString $adminPassword -AsPlainText -Force)))

# Create an Azure SQL Database
.New-AzSqlDatabase -ResourceGroupName $resourceGroupName -ServerName $sqlServerName -DatabaseName $databaseName -RequestedServiceObjectiveName "S0"
