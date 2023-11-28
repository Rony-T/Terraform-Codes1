resource "azurerm_synapse_linked_service" "saphana_linked_service" {
  name                = var.saphana_linked_service_name
  type                = var.saphana_linked_service_type
  synapse_workspace_id = var.sy_id
  //integration_runtime {name = "${var.sy_linked_service_integration_runtime}"}
 type_properties_json = <<JSON
{
	"name": "LS_DAP_SAP_HANA",
	"type": "Microsoft.Synapse/workspaces/linkedservices",
	"properties": {
		"annotations": [],
		"type": "SapHana",
		"typeProperties": {
			"connectionString": {
				"type": "AzureKeyVaultSecret",
				"store": {
					"referenceName": "LS_DAP_KeyVault",
					"type": "LinkedServiceReference"
				},
				"secretName": "SAPHanaEMP"
			}
		},
		"connectVia": {
			"referenceName": "${var.sy_linked_service_integration_runtime}",
			"type": "IntegrationRuntimeReference"
		}
	}
 }
JSON
}
