
#---------------------------------------------------------
# Create Azure Data Lake Gen2 Deployment
#----------------------------------------------------------

variable "adls_sa_id" {
  description = "Storage account id."
  type        = string
}

variable "adls_name" {
  description = "Name of ADLS Gen2 instance (lowercase and numbers only, must be fewer than 18 characters.)"
  type        = string
}

variable "adls_filesystem_name" {
  description = "The name of the Data Lake Gen2 File System which should be created within the Storage Account. Must be unique within the storage account the queue is located. Changing this forces a new resource to be created."
  type        = string
}

variable "adls_path_name" {
  description = "The path which should be created within the Data Lake Gen2 File System in the Storage Account. Changing this forces a new resource to be created."
  type        = string
}

#Specifies the type for path to create. Currently only directory is supported.
variable "adls_path_resource_name" {
  description = "Specifies the type for path to create. Currently only directory is supported."
  default     = "directory"
  type        = string
}
