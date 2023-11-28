#-------------------------------------
# Resource Group Deployment Output Details
#-------------------------------------

output "out_resourcegroup_name" {
  description = "Azure Resource Group Name deployed"
  value       = element(coalescelist(data.azurerm_resource_group.data_rg.*.name, azurerm_resource_group.rg.*.name, [""]), 0)
}

output "out_resourcegroup_id" {
  description = "Azure Resource Group id deployed"
  value       = element(coalescelist(data.azurerm_resource_group.data_rg.*.id, azurerm_resource_group.rg.*.id, [""]), 0)
}

output "out_resourcegroup_location" {
  description = "Azure Resource Group location deployed"
  value       = element(coalescelist(data.azurerm_resource_group.data_rg.*.location, azurerm_resource_group.rg.*.location, [""]), 0)
}
