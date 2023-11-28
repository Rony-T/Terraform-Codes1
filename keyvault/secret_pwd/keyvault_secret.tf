#------------------------------------------------------------------
# Key Vault to store  passoword
#------------------------------------------------------------------
resource "random_password" "password" {
  length      = 12
  min_upper   = 4
  min_lower   = 2
  min_numeric = 4
  special     = true

}

resource "azurerm_key_vault_secret" "kv_secret" {
  name         = lower(var.kv_secret_name)
  value        = random_password.password.result
  key_vault_id = var.kv_id

  lifecycle {
    ignore_changes = [
      tags,
      value,
    ]
  }
}

