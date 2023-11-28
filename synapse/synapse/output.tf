#---------------------------------------------------------
# Azure Synapse Deployment - Output
#----------------------------------------------------------

output "out_synapse_workspace01_name" {
  description = "Azure Synaps Workspace Name deployed"
  value       = azurerm_synapse_workspace.synapse_workspace01.name
}

output "out_synapse_workspace01_location" {
  description = "Azure Synaps Workspace Name deployed"
  value       = azurerm_synapse_workspace.synapse_workspace01.location
}

output "out_synapse_workspace01_resourcegroup_name" {
  description = "Azure Synaps Workspace Name deployed resource group name"
  value       = azurerm_synapse_workspace.synapse_workspace01.resource_group_name
}

output "out_synapse_workspace01_id" {
  description = "Azure Synaps Workspace id deployed"
  value       = azurerm_synapse_workspace.synapse_workspace01.id
}
output "out_synapse_sql_admin_name" {
  description = "Azure Synaps Workspace id deployed"
  value       = azurerm_synapse_workspace.synapse_workspace01.sql_administrator_login 
}


output "out_synapse_workspace_identity_tenant_id" {
  description = "Azure Synaps Workspace identity tenant id"
  value       = azurerm_synapse_workspace.synapse_workspace01.identity[0].tenant_id
}

output "out_synapse_workspace_identity_principal_id" {
  description = "Azure Synaps Workspace identity tenant id"
  value       = azurerm_synapse_workspace.synapse_workspace01.identity[0].principal_id
}