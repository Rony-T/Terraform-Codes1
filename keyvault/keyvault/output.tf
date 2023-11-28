#-------------------------------------
# Keyvault Deployment Output Details
#-------------------------------------
output "out_keyvault_name" {
  description = "Azure Key Vault Name "
  value       = azurerm_key_vault.keyvault.name
}

output "out_keyvault_id" {
  description = "Azure Key Vault id "
  value       = azurerm_key_vault.keyvault.id
}

output "out_keyvault_uri" {
  description = "The URI of the Key Vault, used for performing operations on keys and secrets."
  value       = azurerm_key_vault.keyvault.vault_uri
}
