#-------------------------------
# Storage Fileshare Creation
#-------------------------------
resource "azurerm_storage_share" "smb_fileshare" {
  count                = length(var.smb_file_shares)
  name                 = var.smb_file_shares[count.index].name
  storage_account_name = var.smb_sa_name
  quota                = var.smb_file_shares[count.index].quota
}
