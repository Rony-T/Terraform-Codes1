
#------------------------------------------------------------------
# Azure Public IP Address Output
#------------------------------------------------------------------

output "out_public_ip" {
  description = "The public IP "
  value       = element(concat([azurerm_public_ip.public_ip.ip_address], [""]), 0)
}

output "out_public_ip_id" {
  description = "The public IP ID"
  value       = azurerm_public_ip.public_ip.id
}