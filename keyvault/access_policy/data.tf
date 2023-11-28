#----------------------------------------------------------
# Get current client configuration
#----------------------------------------------------------

data "azurerm_client_config" "current" {} //

# data "azurerm_key_vault" "keyvault_info" {
#   name                = var.kv_name
#   resource_group_name = var.kv_resourcegroup_name
# }
