
data "azurerm_client_config" "current" {}

/*
# Gets information about an Azure Active Directory group
data "azuread_group" "ad_group" {
  display_name     = var.sql_ad_group_display_name
  security_enabled = true
}
*/