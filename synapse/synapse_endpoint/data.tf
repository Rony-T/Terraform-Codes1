#---------------------------------------------------------
# Get current clietn configuration
#----------------------------------------------------------

data "azurerm_client_config" "current" {}//

data"azurerm_storage_account""storageaccount_info"{
  name                = var.sy_pep_sa_name
  resource_group_name =var.sy_pep_sa_resourcegroup_name
}


data "azurerm_synapse_workspace" "synapse_info" {
  name                = var.sy_pep_name
  resource_group_name = var.sy_pep_resourcegroup_name
}
