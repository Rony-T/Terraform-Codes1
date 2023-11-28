#---------------------------------------
# Action Group within Azure Monitor - Deployment
#---------------------------------------

resource "azurerm_monitor_action_group" "actiongroup_emails" {
  name                = local.locals_actiongroup_name
  resource_group_name = local.locals_actiongroup_resourcegroup_name
  short_name          = var.actiongroup_short_name

  dynamic "email_receiver" {
    for_each = var.actiongroup_emails_list
    content {
      name                    = email_receiver.key
      email_address           = email_receiver.value
      use_common_alert_schema = true
    }

  }
  tags = local.locals_actiongroup_tags
}
