resource "azurerm_data_factory_linked_service_data_lake_storage_gen2" "link_adls" {
  name                  = "${lower(var.adf_name)}-link-adls"
  resource_group_name   = local.locals_resourcegroup_name
  data_factory_id    = azurerm_data_factory.data_factory01.id
  tenant                = data.azurerm_client_config.current.tenant_id
  service_principal_id  = data.azurerm_client_config.current.client_id
  service_principal_key = var.adf_service_principal_client_secret
  url                   = var.adf_sa_primary_dfs_endpoint

}