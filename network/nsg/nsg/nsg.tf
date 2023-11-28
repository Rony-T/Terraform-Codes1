#---------------------------------------------------------------
# Network security group for Virtual Machine Network Interface
#---------------------------------------------------------------
resource "azurerm_network_security_group" "nsg" {
  //count               = var.nsg_id_existing == null ? 1 : 0
  name                = lower("${var.nsg_name}-nsg")
  resource_group_name = var.nsg_resourcegroup_name
  location            = var.nsg_location
  tags                = merge({ "NSG Tag" = format("%s",var.nsg_name)}, var.nsg_tags)

  lifecycle {
    ignore_changes = [
      tags,
    ]
  }
}

resource "azurerm_network_security_rule" "nsg_rule" {
  for_each                    = { for k, v in local.nsg_rules : k => v if k != null }
  name                        = each.key
  priority                    = 100 * (each.value.idx + 1)
  direction                   = each.value.security_rule.direction  //"Inbound" or Outbound
  access                      = each.value.security_rule.access
  protocol                    = each.value.security_rule.protocol //* Tcp Udp Icmp Ah Esp
  source_port_range           = "*"
  destination_port_range      = each.value.security_rule.destination_port_range
  source_address_prefix       = each.value.security_rule.source_address_prefix
  destination_address_prefix  = each.value.security_rule.destination_address_prefix
  description                 = "Port_${each.value.security_rule.destination_port_range}"
  resource_group_name         = var.nsg_resourcegroup_name
  network_security_group_name = azurerm_network_security_group.nsg.name
  depends_on                  = [azurerm_network_security_group.nsg]
}
/*
resource "azurerm_network_security_rule" "nsg_outbound_rule" {
  for_each                    = { for k, v in local.nsg_outbound_rules : k => v if k != null }
  name                        = each.key
  priority                    = 100 * (each.value.idx + 1)
  direction                   = "Outbound"
  access                      = "Allow"
  protocol                    = "Tcp"
  source_port_range           = "*"
  destination_port_range      = each.value.security_rule.destination_port_range
  source_address_prefix       = each.value.security_rule.source_address_prefix
  destination_address_prefix  = element(concat(data.azurerm_subnet.ex_subnet_id.address_prefixes, [""]), 0)
  description                 = "Outbound_Port_${each.value.security_rule.destination_port_range}"
  resource_group_name         = data.azurerm_resource_group.nsg_rg.name
  network_security_group_name = azurerm_network_security_group.nsg.name
  depends_on                  = [azurerm_network_security_group.nsg]
}
*/