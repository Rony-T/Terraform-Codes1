
#-------------------------------------
# Private Endpoint Deployment Output Details
#-------------------------------------
output "key_vault_private_endpoint" {
  description = "The ID of the Key Vault Private Endpoint"
  value       = element(concat(azurerm_private_endpoint.pep01.*.id, [""]), 0)
}

output "key_vault_private_endpoint_ip_addresses" {
  description = "Key Vault private endpoint IPv4 Addresses"
  value       = element(concat(azurerm_private_endpoint.pep01.custom_dns_configs.*.ip_addresses, [""]), 0)
}

output "key_vault_private_endpoint_fqdn" {
  description = "Key Vault private endpoint FQDN Addresses"
  value       = element(concat(azurerm_private_endpoint.pep01.custom_dns_configs.*.fqdn, [""]), 0)
  
}

output "out_ex_vnet_id" {
  description = "existing vnet id."
  value = data.azurerm_virtual_network.ex_vnet_id.id 
}
output "out_ex_subnet_id" {
  description = "existing subnet id."
  value = "${data.azurerm_subnet.ex_subnet_id.id}"
}