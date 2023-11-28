#---------------------------------------------------------
# Azure Key Vault - Secret - Output
#----------------------------------------------------------

output "out_kv_secret_value" {
  description = "Azure Key Vault Secret Value "
  value       = azurerm_key_vault_secret.kv_secret.value
  sensitive   = true
}


# output "out_kv_secret_uri" {
#   value = data.azurerm_key_vault.kv_id.vault_uri
# }


# output "out_kv_secret_id" {
#   value = data.azurerm_key_vault.kv_id.id
# }
