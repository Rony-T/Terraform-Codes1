#---------------------------------------------
# Deploy Public IP
#---------------------------------------------
resource "azurerm_public_ip" "public_ip" {
  name                = var.public_ip_name
  location            = var.public_ip_location
  resource_group_name = var.public_ip_resourcegroup_name
  allocation_method   = var.public_ip_allocation_method
  sku                 = var.public_ip_sku
  domain_name_label   = var.public_ip_domain_name_label
  tags                = merge({ "Public IP Address Tag" = format("%s",var.public_ip_name)}, var.public_ip_tags)

  lifecycle {
    ignore_changes = [
      tags,
      ip_tags,
    ]
  }
}
