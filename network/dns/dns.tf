#------------------------------------------------------------------
# DNS zone & records 
#------------------------------------------------------------------

resource "azurerm_private_dns_zone" "dns_zone01" {
  count               = var.dns_existing_private_dns_zone == null ? 1 : 0
  name                = "privatelink.database.windows.net"
  resource_group_name = var.dns_resourcegroup_name
  tags                = merge({ "DSN Zone Name" = format("%s", "Private-DNS-Zone") }, var.dns_tags, )
}

resource "azurerm_private_dns_zone_virtual_network_link" "dns_vent-link01" {
  name                  = "vnet-private-zone-link"
  resource_group_name   = var.dns_resourcegroup_name
  private_dns_zone_name = var.dns_existing_private_dns_zone == null ? azurerm_private_dns_zone.dns_zone01.0.name : var.dns_existing_private_dns_zone
  virtual_network_id    = var.dns_existing_vnet_id
  registration_enabled  = true
  tags                  = merge({ "DSN vNet Link Name" = format("%s", "vnet-private-zone-link") }, var.dns_tags, )
}

resource "azurerm_private_dns_a_record" "dns_a_record01" {
  //count               = var.enable_private_endpoint ? 1 : 0
  name                = var.dns_a_record_name
  zone_name           = var.dns_existing_private_dns_zone == null ? azurerm_private_dns_zone.dns_zone01.0.name : var.dns_existing_private_dns_zone
  resource_group_name = var.dns_resourcegroup_name
  ttl                 = 300
  records             = [var.dsn_private_endpoint_ipaddress]
  //records             = [data.azurerm_private_endpoint_connection.private-ip1.0.private_service_connection.0.private_ip_address]
}

