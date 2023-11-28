#---------------------------------------------------------
# Azure KeyVault Private Endpoint to Virtual Network
#----------------------------------------------------------

resource "azurerm_private_endpoint" "pep1" {
  name                = format("%s-private-endpoint", var.kv_name)
  location            = var.pep_kv_location
  resource_group_name = var.pep_kv_resource_group_name
  subnet_id           = var.pep_kv_existing_subnet_id
  tags                = merge({ "Name" = format("%s-private-endpoint", var.kv_name) }, var.pep_kv_tags, )

  private_service_connection {
    name                           = format("%s-subnet-kv-pep", var.pep_kv_existing_subnet_name)
    is_manual_connection           = false
    private_connection_resource_id = var.pep_kv_id
    subresource_names              = ["vault"]
  }

  lifecycle {
    ignore_changes = [
      tags,
    ]
  }
}
