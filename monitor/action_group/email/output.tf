#---------------------------------------
# Action Group within Azure Monitor - Output
#---------------------------------------

output "out_actiongroup_email_id" {
  description = "Notification Action Group ID"
  value       = azurerm_monitor_action_group.actiongroup_emails.id
}