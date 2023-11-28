#---------------------------------------
# Metric Alert within Azure Monitor - Output
#---------------------------------------

output "out_alert_matric_id" {
  description = "Notification Action Group ID"
  value       = azurerm_monitor_metric_alert.alert_matric.id
}