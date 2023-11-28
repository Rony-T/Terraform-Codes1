
output "out_storage_account_id" {
  description = "The ID of the storage account."
  value       = azurerm_storage_account.storage_account01.id
}

output "out_storage_account_name" {
  description = "The name of the storage account."
  value       = azurerm_storage_account.storage_account01.name
  
}

output "out_storage_account_resourcegroup_name" {
  description = "storage account resource group."
  value       = azurerm_storage_account.storage_account01.resource_group_name
  
}

output "out_storage_account_primary_location" {
  description = "The primary location of the storage account"
  value       = azurerm_storage_account.storage_account01.primary_location
}

output "out_storage_account_primary_web_endpoint" {
  description = "The endpoint URL for web storage in the primary location."
  value       = azurerm_storage_account.storage_account01.primary_web_endpoint
}

output "out_storage_account_primary_web_host" {
  description = "The hostname with port if applicable for web storage in the primary location."
  value       = azurerm_storage_account.storage_account01.primary_web_host
}

output "out_storage_primary_connection_string" {
  description = "The primary connection string for the storage account"
  value       = azurerm_storage_account.storage_account01.primary_connection_string
  sensitive   = true
}

output "out_storage_primary_access_key" {
  description = "The primary access key for the storage account"
  value       = azurerm_storage_account.storage_account01.primary_access_key
  sensitive   = true
}

output "out_storage_secondary_access_key" {
  description = "The primary access key for the storage account."
  value       = azurerm_storage_account.storage_account01.secondary_access_key
  sensitive   = true
}
output "out_storage_dfs_endpoint" {
  description = "Primary DFS endpoint of the created storage account"
  value       = azurerm_storage_account.storage_account01.primary_dfs_endpoint
}

# Blob
output "out_storage_primary_blob_endpoint" {
  description = "The primary access key for the storage account."
  value       = azurerm_storage_account.storage_account01.primary_blob_endpoint

}
output "out_storage_primary_id" {
  description = "The primary access key for the storage account."
  value       = azurerm_storage_account.storage_account01.identity.0.principal_id

}

#---------------------------------------------------------
# Storage encryption
#----------------------------------------------------------
/*
output "out_storage_encryption_scope_id" {
  value = data.azurerm_storage_encryption_scope.storage_encryption_scope.id
}
*/
