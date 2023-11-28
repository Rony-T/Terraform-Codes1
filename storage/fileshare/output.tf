#--------------------------------------
# Storage File Share Output
#--------------------------------------

output "out_sa_file_shares" {
  description = "Map of Storage SMB file shares."
  value       = { for mnh in azurerm_storage_share.smb_fileshare : mnh.name => mnh.id }
}