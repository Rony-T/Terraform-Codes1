output "out_kv_secret_value" {
  description = "Azure Key Vault Secret Value "
  value       = azurerm_key_vault_secret.kv_secret.value
  sensitive   = true
}

