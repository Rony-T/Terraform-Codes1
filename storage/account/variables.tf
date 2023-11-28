#--------------------------------------
# Storage Properties
#--------------------------------------

variable "sa_resourcegroup_name" {
  description = "Azure resource group name"

}

variable "sa_location" {
  description = "Azure resource group name"

}

variable "sa_name" {
  description = "Azure storage account name"
  default     = "terrastorage"
}

variable "sa_account_kind" {
  description = "Azure storage account type. Valid options are BlobStorage, BlockBlobStorage, FileStorage, Storage and StorageV2."
  default     = "StorageV2"
}

variable "sa_sku_name" {
  description = "Azure supported Storage SKU's. Valid options are Premium_LRS, Premium_ZRS, Standard_GRS, Standard_GZRS, Standard_LRS, Standard_RAGRS, Standard_RAGZRS, Standard_ZRS"
  default     = "Standard_RAGRS"
}

variable "sa_hierarchical_namespace_enabled" {
  description = "This can only be true when account_tier is Standard or when account_tier is Premium and account_kind is BlockBlobStorage"
  default     = "false"
}

variable "sa_nfsv3_enabled" {
  description = "Is NFSv3 protocol enabled"
  default     = "false"
}

variable "sa_shared_access_key_enabled" {
  description = "Is NFSv3 protocol enabled"
  default     = "false"
}

variable "sa_access_tier" {
  description = "Defines the access tier for BlobStorage and StorageV2 accounts access tear. Valid options (Hot or Cool) "
  default     = "Hot"
}

variable "sa_min_tls_version" {
  description = "Azure storage account minimum supported TLS version"
  default     = "TLS1_2"
}

variable "sa_identity_type" {
  description = "The type of Managed Identity which should be assigned to the Linux Virtual Machine. Possible values are `SystemAssigned`, `UserAssigned` and `SystemAssigned, UserAssigned`"
  default     = null
  type        = string
}

variable "sa_identity_ids" {
  description = "A list of User Managed Identity ID's which should be assigned to the Linux Virtual Machine."
  default     = null
  type        = list(string)
}


# Create Tag for Storage account

variable "sa_tags" {
  description = "Tag Storage account details"
  type        = map(string)
  default     = {}
}



variable "sa_blob_soft_delete_retention_days" {
  description = "Specifies the number of days that the blob should be retained, between `1` and `365` days. Defaults to `7`"
  default     = 7
}

variable "sa_container_soft_delete_retention_days" {
  description = "Specifies the number of days that the blob should be retained, between `1` and `365` days. Defaults to `7`"
  default     = 7
}

variable "sa_enable_versioning" {
  description = "Is versioning enabled? Default to `false`"
  default     = false
}

variable "sa_last_access_time_enabled" {
  description = "Is the last access time based tracking enabled? Default to `false`"
  default     = false
}

variable "sa_change_feed_enabled" {
  description = "Is the blob service properties for change feed events enabled?"
  default     = false
}


#---------------------------------------------------------
# Create Storage Encryption Scope
#----------------------------------------------------------

variable "sa_encryption_scope_name" {
  description = "value"
  type        = string
}

#--------------------------------------
# Network Rules
#--------------------------------------
variable "sa_network_rules" {
  description = "Network rules restricing access to the storage account."
  type        = object({ default_action = string, bypass = list(string), ip_rules = list(string), subnet_ids = list(string) })
  default     = null
}



#--------------------------------------
# Storage Advanced Threat Protection 
#--------------------------------------
variable "sa_enable_advanced_threat_protection" {
  description = "Boolean flag which controls if advanced threat protection is enabled."

}
/*
#-------------------------------
# Storage keyvault key
#-------------------------------
variable "sa_keyvault01_id" {
  type        = string
  description = "Azure Storage Keyvault key"

}
*/

