variable "log_deploy_condition" {
  description = "Decide if we want this service in the given environment"
  type = string
  default = "false"
}

variable "log_name" {
  description = "Name of the log analytics service"
  type = string
}

variable "log_location" {
  description = "Location for the service"
  type = string
}

variable "log_resource_group_name" {
  description = "RG for the log analytics service"
  type = string
}

variable "log_sku" {
  description = "SKU for this service"
  type = string
  default = "PerGB2018"
}

variable "log_retention" {
  description = "Retention period for the logs"
  type = number
  default = 30
}

