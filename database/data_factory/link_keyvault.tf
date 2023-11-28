resource "azurerm_data_factory_linked_service_key_vault" "link_keyvault" {
  name                = "${lower(var.adf_name)}-link-vault"
  resource_group_name = local.locals_resourcegroup_name
  data_factory_id     = azurerm_data_factory.data_factory01.id
  key_vault_id = var.adf_kv_id

}
