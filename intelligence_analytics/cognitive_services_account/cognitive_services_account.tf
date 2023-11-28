#---------------------------------------------------------
# Azure Cognitive Services Account - Deployment 
#----------------------------------------------------------

resource "azurerm_cognitive_account" "cognitive_account" {
  name                = local.locals_ca_name
  resource_group_name = var.ca_resourcegroup_name
  location            = var.ca_location
  kind                = var.ca_kind
  sku_name                           = var.ca_sku_name
  custom_subdomain_name              = var.ca_custom_subdomain_name
  outbound_network_access_restricted = var.ca_outbound_network_access_restricted
  public_network_access_enabled      = var.ca_public_network_access_enabled
  tags = local.locals_ca_tags
  
  identity {
    type = var.ca_identity
  }

  dynamic "network_acls" {
    for_each = var.ca_network_rules != null ? [true] : []
    content {
      # bypass                     = var.ca_network_rules.bypass
      default_action = var.ca_network_rules.default_action
      ip_rules       = var.ca_network_rules.ip_rules
      virtual_network_rules {
        subnet_id = var.ca_network_rules.subnet_id
      }
    }

  }

}

