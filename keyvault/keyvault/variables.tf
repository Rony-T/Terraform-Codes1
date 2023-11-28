#---------------------------------------------------------
# Azure Key Vault  
#----------------------------------------------------------
variable "kv_name" {
  description = "Azure key vault name"
  default     = "keyvaultname"
}

variable "kv_id" {
  type        = string
  default     = ""
  description = "ID of the optional Key Vault. The module will store all relevant secrets inside this Key Vault and output the keys."
}

variable "kv_resourcegroup_name" {
  description = "Azure resource group name"

}

variable "kv_location" {
  description = "Azure resource Location"

}

variable "kv_sku" {
  description = "Azure key vault sku"

}

variable "kv_pure_protection_enabled" {
  description = "Boolean flag which controls if advanced threat protection is enabled."
}

# Tag for Keyvault
variable "kv_tags" {
  description = "Tag Keyvault details"
  type        = map(string)
  default     = {}
}
variable "kv_enabled_for_deployment" {
  description = "Allow Virtual Machines to retrieve certificates stored as secrets from the key vault."

}

variable "kv_enabled_for_disk_encryption" {
  description = "Allow Disk Encryption to retrieve secrets from the vault and unwrap keys."

}

variable "kv_enabled_for_template_deployment" {
  description = "Allow Resource Manager to retrieve secrets from the key vault."

}

variable "kv_enable_rbac_authorization" {
  description = "Specify whether Azure Key Vault uses Role Based Access Control (RBAC) for authorization of data actions"

}

variable "kv_virtual_network_subnet_ids" {
  description = "Network Id that should be whitelisted in the Vault Firewall"
  type = list(string)
}

variable "kv_azure_devops_object_id" {
  description = "Object id of the Azure Devops of Orica to give access to the Devops pipeline during deployment to the Vault"
  type = string
}


/*
#Private Endpoint Variables

variable "kv_pep01_condition" {
  description = "Manages a Private Endpoint to Azure Container Registry"
  
}

variable "ex_vnet_name" {
  description = "The resoruce id of existing Virtual network"
  
}

variable "ex_vnet_subnet_name" {
  description = "The resource id of existing subnet"

}

variable "ex_vnet_resourcegroup_name" {
  description = "Vnet resourcegroupname"

}

variable "kv_existing_private_dns_zone" {
  description = "Name of the existing private DNS zone"

}

*/
