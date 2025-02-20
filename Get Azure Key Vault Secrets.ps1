# Define variables
$keyVaultName = "myKeyVault"

# Get all secrets
Get-AzKeyVaultSecret -VaultName $keyVaultName | Format-Table Name, Enabled, Created
