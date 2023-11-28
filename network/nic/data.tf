data "azurerm_virtual_network" "ex_vnet_name" {
  name                = var.ex_vnet_name
  resource_group_name = var.ex_vnet_resourcegroup_name
}


data "azurerm_subnet" "ex_subnet_id" {
  name                 = var.ex_vnet_subnet_name
  virtual_network_name = data.azurerm_virtual_network.ex_vnet_name.name
  resource_group_name  = var.ex_vnet_resourcegroup_name
}

