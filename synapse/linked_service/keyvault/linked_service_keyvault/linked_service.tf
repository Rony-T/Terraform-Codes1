#---------------------------------------------------------
# Azure Synapse Linked Service
#----------------------------------------------------------
# Dependancy on synapse firewall rule
resource "azurerm_synapse_linked_service" "sy_linked_service" {
  name                 = var.sy_linked_service_name
  synapse_workspace_id = var.sy_id
  type                 = var.sy_linked_service_type
  integration_runtime {name = "${var.sy_linked_service_integration_runtime}"}
  type_properties_json = <<JSON
{
            "connectionString": {
                "type": "${var.sy_linked_service_connectionString_type}",
                "store": {
                    "referenceName": "${var.sy_linked_service_connectionString_referenceName}",
                    "type": "LinkedServiceReference"
                },
                "secretName": "${var.sy_linked_service_connectionString_secretName}"
            }
}
JSON
}
