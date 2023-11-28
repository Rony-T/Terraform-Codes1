#---------------------------------------------------------
# Azure Data Factory Deployment
#----------------------------------------------------------
resource "random_string" "unique" {
  length  = 5
  special = false
  upper   = false
}

resource "azurerm_data_factory" "data_factory01" {
  name                    = local.locals_adf_name
  resource_group_name     = local.locals_resourcegroup_name
  location                = local.locals_location
  public_network_enabled = false
    identity {
    type         = "SystemAssigned"
  }

}