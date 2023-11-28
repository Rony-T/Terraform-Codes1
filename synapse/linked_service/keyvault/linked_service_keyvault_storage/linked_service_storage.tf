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
  "url": "https://${var.sy_linked_service_storage_account_name}.dfs.core.windows.net",
            "accountKey": {
                "type": "${var.sy_linked_service_secret_type}",
                "store": {
                    "referenceName": "${var.sy_linked_service_secret_keyvault_name}",
                    "type": "LinkedServiceReference"
                },
                "secretName": "${var.sy_linked_service_secretName}"
            }
}
JSON
}
