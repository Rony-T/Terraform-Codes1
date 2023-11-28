#---------------------------------------------------------
# Storage Account Creation or selection 
#----------------------------------------------------------
resource "random_string" "unique" {
  length  = 5
  special = false
  upper   = false
}


resource "azurerm_storage_account" "storage_account01" {
  name                      = local.locals_storageaccount_name
  resource_group_name       = var.sa_resourcegroup_name
  location                  = var.sa_location
  account_kind              = var.sa_account_kind //account_kind to be either StorageV2 or BlobStorage. In addition, is_hns_enabled has to be set to true.
  is_hns_enabled            = var.sa_hierarchical_namespace_enabled //This can only be true when account_tier is Standard or when account_tier is Premium and account_kind is BlockBlobStorage
  account_tier              = local.locals_storageaccount_tier
  account_replication_type  = local.locals_storageaccount_replication_type
  enable_https_traffic_only = true
  nfsv3_enabled = var.sa_nfsv3_enabled
  min_tls_version           = var.sa_min_tls_version
  shared_access_key_enabled = var.sa_shared_access_key_enabled ##enable to access the storage account with key
  allow_nested_items_to_be_public = true
  tags = local.locals_storageaccount_tags
  identity {
    type         = var.sa_identity_ids != null ? "SystemAssigned, UserAssigned" : "SystemAssigned"
    identity_ids = var.sa_identity_ids
  }

  blob_properties {
    delete_retention_policy {
      days = var.sa_blob_soft_delete_retention_days
    }
    container_delete_retention_policy {
      days = var.sa_container_soft_delete_retention_days
    }
    versioning_enabled       = var.sa_enable_versioning
    last_access_time_enabled = var.sa_last_access_time_enabled
    change_feed_enabled      = var.sa_change_feed_enabled
  }
dynamic "network_rules" {
    for_each = var.sa_network_rules != null ? ["true"] : []
    content {
      default_action             = var.sa_network_rules.default_action
      bypass                     = var.sa_network_rules.bypass
      ip_rules                   = var.sa_network_rules.ip_rules
      virtual_network_subnet_ids = var.sa_network_rules.subnet_ids
    }
  }

}

/*
resource "azurerm_storage_account_network_rules" "sa_rules" {
  storage_account_id = azurerm_storage_account.storage_account01.id
  default_action     = var.sa_default_action
  ip_rules           = [var.sa_allow_ip_rules]
  bypass             = ["AzureServices", "Logging", "Metrics"]
}
*/
#--------------------------------------
# Storage Advanced Threat Protection 
#--------------------------------------
resource "azurerm_advanced_threat_protection" "sa_adv_threat_protection" {
  target_resource_id = azurerm_storage_account.storage_account01.id
  enabled            = var.sa_enable_advanced_threat_protection
}
