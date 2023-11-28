#data "azurerm_resource_group" "nsg_rg" {
#  name = var.nsg_resourcegroup_name
#}

   data "azurerm_virtual_network" "ex_vnet_name" {
  name                = "USW2-IT-BAC-DEV-VNET"
  resource_group_name = "USW2-IT-BAC-DEV-NETWORK-RG"
}
data "azurerm_subnet" "ex_subnet_id" {
  name                 = "Database-Tier"
  virtual_network_name = data.azurerm_virtual_network.ex_vnet_name.name
  resource_group_name  = "USW2-IT-BAC-DEV-NETWORK-RG"
}
