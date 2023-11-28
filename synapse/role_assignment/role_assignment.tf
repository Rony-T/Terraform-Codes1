#---------------------------------------------------------
# Azure Synapse Deployment - Role Assignment
#----------------------------------------------------------

 resource "azurerm_synapse_role_assignment" "sy_role_assignment" {
  synapse_workspace_id = var.sy_id
  role_name            = var.sy_role_name //"Synapse SQL Administrator"
  principal_id         = var.sy_principal_ids//data.azurerm_client_config.current.object_id

}
