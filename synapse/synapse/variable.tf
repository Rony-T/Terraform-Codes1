#---------------------------------------------------------
# Azure Synapse Variables 
#----------------------------------------------------------
variable "sy_name" {
  description = "Azure key vault name"
  default     = "synapsename"
}

variable "sy_resourcegroup_name" {
  description = "Azure resource group name"

}

variable "sy_location" {
  description = "Azure data factory location"

}

variable "sy_sql_admin_name" {
  description = "Azure Synapse sql administrator login Name. name may only contain alphanumeric characters and dashes"

}
variable "sy_sql_admin_pwd" {
  description = "Azure Synapse sql administrator password"

}

variable "sy_workspace_admin01_name" {
  description = "Azure Synapse sql administrator login Name"

}

variable "sy_identity" {
  description = "Specifies the type of Managed Service Identity that should be configured on this Synapse Workspace. The only possible value is SystemAssigned"

}

#Storage Details

# variable "sy_sa_name" {
#   description = "Storage account name"

# }

# variable "sy_sa_resourcegroup_name" {
#   description = "Storage account resource group"

# }

variable "sy_sa_id" {
  description = "storage account id"
  type = string
}


#---------------------------------------------------------
# Create Tag for Synapse
#----------------------------------------------------------
variable "sy_tags" {
  description = "Tag Azure Synapse details"
  type        = map(string)
  default     = {}
}

# Azure Synapse - Active Directory Administrator Deployment

variable "sy_aad_admin_enable" {
  description = "Synapse active directory group login"

}

variable "sy_aad_group_login" {
  description = "Synapse active directory group login"

}

variable "sy_aad_group_object_id" {
  description = "Synapse active directory group login"

}

# Azure Synapse - Firewall
variable "sy_firewall" {
  description = "List of network rules to apply to network interface."
  default     = []
}

#Key Vault Details
# variable "sy_kv_name" {
#   description = "Key Vault name"

# }

# variable "sy_kv_resourcegroup_name" {
#   description = "Key Vault resource group"

# }
