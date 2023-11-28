
//access the configuration of the AzureRM provider
output "out_adf_principal_id" {
  value = azurerm_data_factory.data_factory01.identity
}

output "out_adf_name" {
  value = azurerm_data_factory.data_factory01.name
}

output "out_adf_id" {
  value = azurerm_data_factory.data_factory01.id
}