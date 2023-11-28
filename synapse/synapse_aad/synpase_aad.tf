#---------------------------------------------------------
# Manages an Azure Active Directory SQL Administrator setting for a Synapse Workspace
#----------------------------------------------------------

resource "azurerm_synapse_workspace_aad_admin" "sy_aad_admin" {
  count                = var.sy_aad_admin_enable ? 1 : 0
  synapse_workspace_id = var.sy_id
  login                = var.sy_aad_group_login
  object_id            = var.sy_aad_group_object_id //data.azurerm_client_config.current.object_id
  tenant_id            = data.azurerm_client_config.current.tenant_id
}
