#---------------------------------------
# Metric Alert within Azure Monitor - Deployment
#---------------------------------------

resource "azurerm_monitor_metric_alert" "alert_matric" {
  name                = local.locals_alert_matric_name
  resource_group_name = local.locals_alert_matric_resourcegroup_name
  scopes              = [var.alert_matric_resource_id]
  description         = var.alert_matric_description
  target_resource_type = var.alert_matric_target_resource_type //The resource type (e.g. Microsoft.Compute/virtualMachines) of the target resource
  frequency = var.alert_matric_frequency //Possible values are PT1M, PT5M, PT15M, PT30M and PT1H. Defaults to PT1M
  window_size  = var.alert_matric_window_size //This value must be greater than frequency. Possible values are PT1M, PT5M, PT15M, PT30M, PT1H, PT6H, PT12H and P1D. Defaults to PT5M.
  severity = var.alert_matric_everity //Possible values are 0, 1, 2, 3 and 4. Defaults to 3
  tags                = local.locals_alert_matric_tags
 
  criteria {
    metric_namespace = var.alert_matric_metric_namespace
    metric_name      = var.alert_matric_metric_name
    aggregation      = var.alert_matric_aggregation
    operator         = var.alert_matric_operator
    threshold        = var.alert_matric_threshold
  }

  action {
    action_group_id = var.alert_matric_actiongroup_id
  }

}
