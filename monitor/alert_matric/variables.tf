#---------------------------------------
# Metric Alert within Azure Monitor - Variables
#---------------------------------------

variable "alert_matric_resourcegroup_name" {
  description = "Name of the resource group in which to create the Metric Alert"
  default     = ""
}

variable "alert_matric_name" {
  description = "Name of the Metric Alert"

}

variable "alert_matric_resource_id" {
  description = "set of strings of resource IDs at which the metric criteria should be applied"

}

variable "alert_matric_description" {
  description = "description of this Metric Alert"

}

variable "alert_matric_target_resource_type" {
  description = "The resource type (e.g. Microsoft.Compute/virtualMachines) of the target resource"

}

variable "alert_matric_frequency" {
  description = "Possible values are PT1M, PT5M, PT15M, PT30M and PT1H. Defaults to PT1M"

}

variable "alert_matric_window_size" {
  description = "This value must be greater than frequency. Possible values are PT1M, PT5M, PT15M, PT30M, PT1H, PT6H, PT12H and P1D. Defaults to PT5M."

}


variable "alert_matric_everity" {
  description = "Possible values are 0, 1, 2, 3 and 4. Defaults to 3"

}




variable "alert_matric_metric_namespace" {
  description = "One of the metric namespaces to be monitored"

}

variable "alert_matric_metric_name" {
  description = "One of the metric names to be monitored"

}

variable "alert_matric_aggregation" {
  description = "The statistic that runs over the metric values. Possible values are Average, Count, Minimum, Maximum and Total"

}

variable "alert_matric_operator" {
  description = "The criteria operator. Possible values are Equals, NotEquals, GreaterThan, GreaterThanOrEqual, LessThan and LessThanOrEqual"

}

variable "alert_matric_threshold" {
  description = "The criteria threshold value that activates the alert"

}

variable "alert_matric_actiongroup_id" {
  description = "The ID of the Action Group can be sourced from the azurerm_monitor_action_group resource"

}


#Tag Virtual Machine
variable "alert_matric_tags" {
  description = "Tags to add Virtual Machine resources"
  type        = map(string)
  default     = {}
}
