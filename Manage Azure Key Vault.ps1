# Define variables
$resourceGroupName = "myResourceGroup"
$keyVaultName = "myKeyVault"

# Create a Key Vault
New-AzKeyVault -VaultName $keyVaultName -ResourceGroupName $resourceGroupName -Location "eastus"

# Add a secret to the Key Vault
Set-AzKeyVaultSecret -VaultName $keyVaultName -Name "mySecret" -SecretValue (ConvertTo-SecureString "mySecretValue" -AsPlainText -Force)

# Retrieve a secret from the Key Vault
$secret = Get-AzKeyVaultSecret -VaultName $keyVaultName -Name "mySecret"
$secretValue = [System.Runtime.InteropServices.Marshal]::PtrToStringAuto([System.Runtime.InteropServices.Marshal]::SecureStringToBSTR($secret.SecretValue))
Write-Output $secretValue
