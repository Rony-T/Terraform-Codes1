
output "out_dns_private_a_record_fqdn" {
  description = "Priamary SQL server private endpoint IPv4 Addresses "
  value       = element(concat(azurerm_private_dns_a_record.dns_a_record01.*.fqdn, [""]), 0)
}