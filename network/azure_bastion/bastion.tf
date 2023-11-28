#------------------------------------------------------------------
# Deploy Azure Bastion 
#------------------------------------------------------------------

resource "azurerm_bastion_host" "bastion_host" {
  name                   = lower(var.bh_name)
  resource_group_name    = var.bh_resourcegroup_name
  location               = var.bh_location
  copy_paste_enabled     = var.bh_copy_paste_enable
  file_copy_enabled      = var.bh_sku == "Standard" ? var.bh_file_copy_enable : null
  sku                    = var.bh_sku
  ip_connect_enabled     = var.bh_ip_connect_enable
  scale_units            = var.bh_sku == "Standard" ? var.bh_scale_units : 2
  shareable_link_enabled = var.bh_sku == "Standard" ? var.bh_shareable_link_enable : null
  tunneling_enabled      = var.bh_sku == "Standard" ? var.bh_tunneling_enable : null
  tags                   = merge({ "ResourceName" = lower(var.bh_name) }, var.bh_tags, )

  ip_configuration {
    name                 = "${lower(var.bh_name)}-network"
    subnet_id            = var.bh_subnet_id
    public_ip_address_id = var.bh_public_ip_id
  }
}
