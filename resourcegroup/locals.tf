#-------------------------------
# Local Declarations
#-------------------------------
locals {
# Local Declarations resource group name and location
  locals_resourcegroup_name = element(coalescelist(data.azurerm_resource_group.data_rg.*.name, azurerm_resource_group.rg.*.name, [""]), 0)
  locals_location                  = element(coalescelist(data.azurerm_resource_group.data_rg.*.location, azurerm_resource_group.rg.*.location, [""]), 0)
}
