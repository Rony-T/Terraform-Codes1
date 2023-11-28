#---------------------------------------------------------
# Azure Synapse Linked Service
#----------------------------------------------------------
# Dependancy on synapse firewall rule
resource "azurerm_synapse_linked_service" "sy_linked_service" {
  name                 = var.sy_linked_service_name
  synapse_workspace_id = var.sy_id
  type                 = var.sy_linked_service_type
  type_properties_json = <<JSON
    {
    "host": "${var.sy_linked_service_sftp_hostname}",
    "port": "${var.sy_linked_service_port}",
    "skipHostKeyValidation": "${var.sy_linked_service_skipHostKeyValidation}",
    "authenticationType": "${var.sy_linked_service_authenticationType}",
    "userName": "${var.sy_linked_service_userName}",
    "password": {
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
