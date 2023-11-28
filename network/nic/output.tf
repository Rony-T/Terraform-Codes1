output "out_nic_ids" {
  description = "List of Network security groups and ids"
  value       = azurerm_network_interface.nic.id
  
}