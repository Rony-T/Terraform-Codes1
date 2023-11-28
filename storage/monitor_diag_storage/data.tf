data "azurerm_monitor_diagnostic_categories" "diag_categories" {
  resource_id = "${var.diag_storageaccount_id}/blobServices/default"
}
