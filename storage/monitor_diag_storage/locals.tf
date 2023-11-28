#-------------------------------
# Local Declarations
#-------------------------------
locals {
  
#-------------------------------
# Local Declarations storage monitoring
#-------------------------------

  sa_diagnostics_resource_list = var.sa_diagnostics != null ? split("/", var.sa_diagnostics.destination) : []
  sa_diagnostics_details = var.sa_diagnostics != null ? {
    log_analytics_id   = contains(local.sa_diagnostics_resource_list, "Microsoft.OperationalInsights") ? var.sa_diagnostics.destination : null
    storage_account_id = contains(local.sa_diagnostics_resource_list, "Microsoft.Storage") ? var.sa_diagnostics.destination : null
    event_hub_auth_id  = contains(local.sa_diagnostics_resource_list, "Microsoft.EventHub") ? var.sa_diagnostics.destination : null
    metric             = var.sa_diagnostics.metrics
    log                = var.sa_diagnostics.logs
    } : {
    log_analytics_id   = null
    storage_account_id = null
    event_hub_auth_id  = null
    metric             = []
    log                = []
  }
 
}

