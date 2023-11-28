#---------------------------------------------------------
# Azure Synapse Linked Service
#----------------------------------------------------------
# Dependancy on synapse firewall rule
resource "azurerm_synapse_linked_service" "sy_linked_service" {
  name                 = var.sy_linked_service_name
  synapse_workspace_id = var.sy_id
  //integration_runtime = [var.sy_linked_service_integration_runtime]
  type                 = var.sy_linked_service_type
  type_properties_json = <<JSON
{
  "connectionString": "${var.sy_connection_string}"
}
JSON

}

