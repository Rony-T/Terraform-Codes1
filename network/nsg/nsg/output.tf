output "out_nsg_ids" {
  description = "List of Network security groups and ids"
  value       = azurerm_network_security_group.nsg.id
}