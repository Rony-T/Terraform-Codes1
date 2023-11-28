#-------------------------------------
# Subnet Deployment
#-------------------------------------
resource "azurerm_subnet" "subnet" {
  name                                           = "AzureBastionSubnet"
  resource_group_name                            = var.subnet_resourcegroup_name
  virtual_network_name                           = var.subnet_vnet_name
  address_prefixes                               = var.subnet_address_prefixes
 }
