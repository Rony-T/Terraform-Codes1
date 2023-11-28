#---------------------------------------------------------
# Resource Group Creation - Default is "false"
#----------------------------------------------------------
data "azurerm_resource_group" "data_rg" {
  count = var.rg_deploy_condition == false ? 1 : 0 # if var.rg_deploy_condition = false then count is 0 else count is 1
  name  = var.rg_name
}
