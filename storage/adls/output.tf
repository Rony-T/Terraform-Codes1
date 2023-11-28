#---------------------------------------------------------
# Create Storage data lake gen 2 filesystem and path
#----------------------------------------------------------

output "out_adls_filesystem_name" {
  description = "The name of the Data Lake Gen2 File System which should be created within the Storage Account. Must be unique within the storage account the queue is located. Changing this forces a new resource to be created."
  value       = azurerm_storage_data_lake_gen2_filesystem.adls_filesystem.name
}

output "out_storage_account_adls_filesystem_id" {
  description = "The ID of the storage account."
  value       = azurerm_storage_data_lake_gen2_filesystem.adls_filesystem.id
}
output "out_storage_account_adls_path_id" {
  description = "The ID of the storage account."
  value       = azurerm_storage_data_lake_gen2_path.adls_path.id
}
