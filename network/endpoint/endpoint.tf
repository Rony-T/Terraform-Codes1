#---------------------------------------------------------
# Validate subnet configuratoin "PrivateEndpoint Created In Subnet That Has NetworkPolicies nabled" 
#---------------------------------------------------------


#---------------------------------------------------------
# Private Link for Keyvault - Default is "false" 
#---------------------------------------------------------
resource "azurerm_private_endpoint" "pep01" {

  name                = format(lower("${var.pep_name}-pep"))
  location            = local.locals_pep_location
  resource_group_name = local.locals_pep_resourcegroup_name
  subnet_id           = data.azurerm_subnet.ex_subnet_id.id
  tags = local.locals_pep_tags
  
  private_service_connection {
    name                           = format(lower("${var.pep_name}-service-conneciton"))
    is_manual_connection           = false
    private_connection_resource_id = var.pep_connection_resource_id //azurerm_key_vault.keyvault.id
    subresource_names              = [var.pep_subresource_names]    //valid options dfs, sqlServer, managedInstance, blob, file, queue, table, web, sites, vault
  }

  lifecycle {
    ignore_changes = [
      tags,
    ]
  }
}

data "azurerm_private_endpoint_connection" "pep-ip01" {
  name                = azurerm_private_endpoint.pep01.name
  resource_group_name = local.locals_pep_resourcegroup_name

}
