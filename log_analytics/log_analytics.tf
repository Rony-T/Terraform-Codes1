resource "azurerm_log_analytics_workspace" "log" {
  count = var.log_deploy_condition == "true" ? 1 : 0
  name                = var.log_name
  location            = var.log_location
  resource_group_name = var.log_resource_group_name
  sku                 = var.log_sku
  retention_in_days   = var.log_retention
}
