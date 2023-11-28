resource "azurerm_key_vault_access_policy" "kv_access_policy" {
  key_vault_id = var.kv_id
  tenant_id    = data.azurerm_client_config.current.tenant_id
  object_id    = var.kv_object_id

  key_permissions = [
    "Get",
  ]

  secret_permissions = [
    "Get",
  ]

}
