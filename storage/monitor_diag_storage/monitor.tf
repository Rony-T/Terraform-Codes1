resource "azurerm_monitor_diagnostic_setting" "diag_setting" {
  count                          = var.sa_diagnostics != null ? 1 : 0
  name                           = var.sa_diag_name
  target_resource_id             = "${var.diag_storageaccount_id}/blobServices/default"
  log_analytics_workspace_id     = local.sa_diagnostics_details.log_analytics_id
  eventhub_authorization_rule_id = local.sa_diagnostics_details.event_hub_auth_id
  eventhub_name                  = local.sa_diagnostics_details.event_hub_auth_id != null ? var.sa_diagnostics.eventhub_name : null
  storage_account_id             = var.diag_storageaccount_id

  dynamic "log" {
    for_each = data.azurerm_monitor_diagnostic_categories.diag_categories.logs
    content {
      category = log.value
      enabled  = contains(local.sa_diagnostics_details.log, "all") || contains(local.sa_diagnostics_details.log, log.value)

      retention_policy {
        enabled = true
        days    = var.sa_log_retention_days
      }
    }
  }

  dynamic "metric" {
    for_each = data.azurerm_monitor_diagnostic_categories.diag_categories.metrics
    content {
      category = metric.value
      enabled  = contains(local.sa_diagnostics_details.metric, "all") || contains(local.sa_diagnostics_details.metric, metric.value)

      retention_policy {
        enabled = true
        days    = var.sa_metric_retention_days
      }
    }
  }
}