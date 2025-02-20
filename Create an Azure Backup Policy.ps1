# Define variables
$resourceGroupName = "myResourceGroup"
$policyName = "myBackupPolicy"
$vaultName = "myRecoveryServicesVault"

# Create a backup policy
New-AzBackupProtectionPolicy -VaultId $(Get-AzRecoveryServicesVault -Name $vaultName).ID `
  -Name $policyName -WorkloadType AzureVM -RetentionPolicy $(Get-AzBackupRetentionPolicyObject)
