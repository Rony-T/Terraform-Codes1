#---------------------------------------------------------
# Azure Synapse SAP CDC Linked Service
#----------------------------------------------------------
resource "azurerm_synapse_linked_service" "sy_linked_service" {
  name                 = var.sy_linked_service_name
  synapse_workspace_id = var.sy_id
  type                 = var.sy_linked_service_type
  integration_runtime {name = "${var.sy_linked_service_integration_runtime}"}
  type_properties_json = <<JSON
{
	"name": "LS_DAP_DEV_SAP_CDC",
	"type": "Microsoft.Synapse/workspaces/linkedservices",
	"properties": {
		"annotations": [],
		"type": "SapOdp",
		"typeProperties": {
			"clientId": "010",
			"sncMode": false,
			"userName": "R_CDQ",
			"subscriberName": "MyADF",
			"password": {
				"type": "AzureKeyVaultSecret",
				"store": {
					"referenceName": "LS_DAP_KeyVault",
					"type": "LinkedServiceReference"
				},
				"secretName": "SapCdc4s"
			},
			"server": "uswiemqcivm00.es.orica.net",
			"systemNumber": "00"
		},
		"connectVia": {
			"referenceName": "SapHana",
			"type": "IntegrationRuntimeReference"
		}
	}
}
JSON
}
