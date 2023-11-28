#---------------------------------------------------------
# Get current clietn configuration
#----------------------------------------------------------

data "azurerm_client_config" "current" {}//

# data "azurerm_storage_account" "storageaccount_info"{
#   name                = var.sy_sa_name
#   resource_group_name =var.sy_sa_resourcegroup_name
# }

# data "azurerm_key_vault" "keyvault_info"{
#   name                =var.sy_kv_name
#   resource_group_name =var.sy_kv_resourcegroup_name
# }
