
#--------------------------------------
# Storage Monitoring
#--------------------------------------
variable diag_storageaccount_id{
  description = ""
  type = string
}

variable "sa_diag_name" {
 description = "value" 
 type = string
}

variable "sa_diagnostics" {
  description = "Diagnostic settings for those resources that support it. See README.md for details on configuration."
  type = object({
    destination   = string
    eventhub_name = string
    logs          = list(string)
    metrics       = list(string)
  })
  default = null
}

variable "sa_log_retention_days" {
  type = number
  description = "The number of days for which this Retention Policy should apply. Zero will retain the events indefinitely."
  
}

variable "sa_metric_retention_days" {
  type = number
  description = "The number of days for which this Retention Policy should apply. Zero will retain the events indefinitely."
  
}