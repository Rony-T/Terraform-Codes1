#--------------------------------------
# Storage File Share Variables
#--------------------------------------
variable "smb_file_shares" {
  description = "List of containers to create and their access levels."
  type        = list(object({ name = string, quota = number }))
  default     = []
}

variable "smb_sa_name" {
  description = "Storage Account for SMB Files Share"

}