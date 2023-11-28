resource "azurerm_synapse_workspace_security_alert_policy" "workspace_security_alert_policy" {
  synapse_workspace_id       = azurerm_synapse_workspace.synapse_workspace01.id
  policy_state               = "Enabled"
  storage_endpoint           = azurerm_storage_account.audit_logs.primary_blob_endpoint
  storage_account_access_key = azurerm_storage_account.audit_logs.primary_access_key
  disabled_alerts = [
    "Sql_Injection",
    "Data_Exfiltration"
  ]
  retention_days = 20
}

resource "azurerm_synapse_workspace_vulnerability_assessment" "example" {
  workspace_security_alert_policy_id = azurerm_synapse_workspace_security_alert_policy.workspace_security_alert_policyid
  storage_container_path             = "${azurerm_storage_account.example.primary_blob_endpoint}${azurerm_storage_container.example.name}/"
  storage_account_access_key         = azurerm_storage_account.example.primary_access_key

  recurring_scans {
    enabled                           = true
    email_subscription_admins_enabled = true
    emails = [
      var.sy_alert_email01,
      var.sy_alert_email02
    ]
  }
}