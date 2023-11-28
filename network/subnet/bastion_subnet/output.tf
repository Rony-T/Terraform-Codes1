#-------------------------------------
# Subnet Output
#-------------------------------------

output "out_subnet_name" {
  description = "The Name of the newly created vNet"
  value       = azurerm_subnet.subnet.name
}
output "out_subnet_address_prefixes" {
  description = "Address prefix to use for the subnet"
  value       = azurerm_subnet.subnet.address_prefixes
}

output "out_subnet_id" {
  description = "The ids of subnets created inside the newl vNet"
  value       = azurerm_subnet.subnet.id
}

