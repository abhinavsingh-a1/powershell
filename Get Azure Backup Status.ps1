# Define variables
$vaultName = "myRecoveryServicesVault"
$vmName = "myVM"

# Get backup status
Get-AzBackupProtectionStatus -VaultId $(Get-AzRecoveryServicesVault -Name $vaultName).ID -Name $vmName
