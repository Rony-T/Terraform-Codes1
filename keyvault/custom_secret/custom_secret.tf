#------------------------------------------------------------------
# Key Vault to store  Custom Secrets
#------------------------------------------------------------------

resource "azurerm_key_vault_secret" "kv_secret" {
  name         = lower(var.kv_secret_name)
  value        = var.kv_vaule
  key_vault_id = var.kv_id

  lifecycle {
    ignore_changes = [
      tags,
      value,
      name
    ]
  }
}

