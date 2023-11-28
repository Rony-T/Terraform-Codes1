# Data Lake Gen2 File System which should be created within the Storage Account
resource "azurerm_storage_data_lake_gen2_filesystem" "adls_filesystem" {
  name               = var.adls_filesystem_name //The name of the Data Lake Gen2 File System which should be created within the Storage Account. Must be unique within the storage account the queue is located. Changing this forces a new resource to be created.
  storage_account_id = var.adls_sa_id

  properties = {
    hello = "aGVsbG8="
  }
}
#Manages a Data Lake Gen2 Path in a File System within an Azure Storage Account.
resource "azurerm_storage_data_lake_gen2_path" "adls_path" {
  path               = var.adls_path_name //The path which should be created within the Data Lake Gen2 File System in the Storage Account. Changing this forces a new resource to be created.
  filesystem_name    = azurerm_storage_data_lake_gen2_filesystem.adls_filesystem.name //The name of the Data Lake Gen2 File System which should be created within the Storage Account. Must be unique within the storage account the queue is located. Changing this forces a new resource to be created.
  storage_account_id = var.adls_sa_id
  resource           = var.adls_path_resource_name // Specifies the type for path to create. Currently only directory is supported.
}

