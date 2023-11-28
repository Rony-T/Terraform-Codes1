#---------------------------------------
# Network Interface
#---------------------------------------
resource "azurerm_network_interface" "nic" {
  name                          = lower("${var.nic_name}-nic")
  resource_group_name           = var.nic_resourcegroup_name
  location                      = var.nic_location
  dns_servers                   = var.nic_dns_servers
  enable_ip_forwarding          = var.nic_ip_forwarding_condition
  enable_accelerated_networking = var.nic_accelerated_networking_condition
  internal_dns_name_label       = var.nic_internal_dns_name_label
  tags                          = merge({ "Network Interface" = format("%s", "var.nic_name") }, var.nic_tags, )

  ip_configuration {
    name                          = lower("${format(lower(replace(var.nic_name, "/[[:^alnum:]]/", "")))}")
    primary                       = true
    subnet_id                     = data.azurerm_subnet.ex_subnet_id.id
    private_ip_address_allocation = var.nic_private_ip_allocation_type
    private_ip_address            = var.nic_private_ip_allocation_type == "Static" ? var.nic_private_ip : null

  }

  lifecycle {
    ignore_changes = [
      tags,
    ]
  }
}
