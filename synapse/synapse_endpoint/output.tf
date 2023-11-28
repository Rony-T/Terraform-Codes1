#---------------------------------------------------------
# Azure Synapse Deployment - Output
#----------------------------------------------------------

output "out_synapse_managed_private_endpoint_id" {
  description = "Azure Synaps Workspace Managed Private Endpoint"
  value       = azurerm_synapse_managed_private_endpoint.synapse_pep.id
}
