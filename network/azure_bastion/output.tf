#------------------------------------------------------------------
# Azure Bastion output
#------------------------------------------------------------------

output "out_bastion_host_id" {
  description = "The resource ID of the Bastion Host"
  value       = azurerm_bastion_host.bastion_host.id
}

output "out_bastion_host_fqdn" {
  description = "The fqdn of the Bastion Host"
  value       = azurerm_bastion_host.bastion_host.dns_name
}
