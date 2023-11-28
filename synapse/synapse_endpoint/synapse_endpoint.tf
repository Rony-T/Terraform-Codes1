#---------------------------------------------------------
# Azure Synapse Manage Private Endpoint
#----------------------------------------------------------
# Dependancy on synapse firewall rule
resource "azurerm_synapse_managed_private_endpoint" "synapse_pep" {
  name                 = lower("${var.pep_sy_name}-pep01")
  synapse_workspace_id = data.azurerm_synapse_workspace.synapse_info.id
  target_resource_id   = data.azurerm_storage_account.storageaccount_info.id
  subresource_name     = var.pep_sy_subresource_name
  lifecycle {
    ignore_changes = [
       
    ]
  }
}

