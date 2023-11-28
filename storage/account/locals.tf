#-------------------------------
# Local Declarations
#-------------------------------
locals {
  locals_storageaccount_name      = substr(format(lower(replace("${var.sa_name},${random_string.unique.result}", "/[[:^alnum:]]/", ""))), 0, 24)
  locals_storageaccount_tier             = (var.sa_account_kind == "FileStorage" ? "Premium" : split("_", var.sa_sku_name)[0])
  locals_storageaccount_replication_type = (local.locals_storageaccount_tier == "Premium" ? "LRS" : split("_", var.sa_sku_name)[1])
  locals_storageaccount_tags = merge({ "StorageAccount Tag" = format("%s", var.sa_name) }, var.sa_tags)
}


