# Microsoft.KeyVault Encryption scope
resource "azurerm_storage_encryption_scope" "encryption_keyvault" {
  name                               = var.sa_encryption_scope_name
  storage_account_id                 = azurerm_storage_account.storage_account01.id
  infrastructure_encryption_required = true
  source                             = "Microsoft.Storage" //The source of the Storage Encryption Scope. Possible values are Microsoft.KeyVault and Microsoft.Storage
  //key_vault_key_id                   = "https://dev-pwc-kv-001.vault.azure.net/keys/tfex-key/19fcf175dd364545bf5c81433c160af9"//problem
}
