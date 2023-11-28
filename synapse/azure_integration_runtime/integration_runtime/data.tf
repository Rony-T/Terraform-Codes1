#---------------------------------------------------------
# Get current clietn configuration
#----------------------------------------------------------

data "azurerm_client_config" "current" {}//

data "azurerm_synapse_workspace" "synapse_info" {
  name                = var.sy_ir_name
  resource_group_name = var.sy_ir_resourcegroup_name
}
