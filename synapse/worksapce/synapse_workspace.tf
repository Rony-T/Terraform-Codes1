#---------------------------------------------------------
# Deploy Azure Synapse Workspace
#----------------------------------------------------------

resource "azurerm_synapse_workspace_aad_admin" "synapse_workspace_admin01" {
  synapse_workspace_id = azurerm_synapse_workspace.synapse_workspace01.id
  login                = var.sy_workspace_admin01_name
  object_id            = "00000000-0000-0000-0000-000000000000"
  tenant_id            = "00000000-0000-0000-0000-000000000000"

  depends_on           = [azurerm_synapse_workspace_key.synapse_workspace_key01]
}