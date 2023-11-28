#---------------------------------------------------------
# Azure Synapse Deployment - Role Assignment
#----------------------------------------------------------
resource "azurerm_role_assignment" "sa_role_assignment" {
  role_definition_name = var.sa_role_definitation_name //"Storage Blob Data Reader"
  scope                = var.sa_id //azurerm_storage_account.test.id
  principal_id         = var.sa_principal_id//azurerm_app_service.test.identity[0].principal_id
}