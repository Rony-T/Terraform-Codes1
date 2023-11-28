#---------------------------------------------------------
# Synapse Azure - Self-hosted Integration Runtime
#----------------------------------------------------------

resource "azurerm_synapse_integration_runtime_self_hosted" "sy_ir_self_hosted" {
  name                 = lower("${var.sy_ir_self_hosted_name}-self-hosted")
  synapse_workspace_id = data.azurerm_synapse_workspace.synapse_info.id
}

# Store Primary integration runtime authentication key in keyvault
resource "azurerm_key_vault_secret" "kv_secret_primary" {
  name         = format(lower(replace("${data.azurerm_synapse_workspace.synapse_info.name}-selfhosted-authorization-key-primary", "/[[:^alnum:]]/", "")))
  value        = azurerm_synapse_integration_runtime_self_hosted.sy_ir_self_hosted.authorization_key_primary
  key_vault_id = data.azurerm_key_vault.sy_keyvault.id

  lifecycle {
    ignore_changes = [
      tags,
      value,
    ]
  }
}

# Store Secondary integration runtime authentication key in keyvault
resource "azurerm_key_vault_secret" "kv_secret_secondary" {
  name         = format(lower(replace("${data.azurerm_synapse_workspace.synapse_info.name}-selfhosted-authorization-key-secondary", "/[[:^alnum:]]/", "")))
  value        = azurerm_synapse_integration_runtime_self_hosted.sy_ir_self_hosted.authorization_key_secondary
  key_vault_id = data.azurerm_key_vault.sy_keyvault.id

  lifecycle {
    ignore_changes = [
      tags,
      value,
    ]
  }
}
