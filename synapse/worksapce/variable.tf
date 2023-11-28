#---------------------------------------------------------
# Azure Synapse Variables 
#----------------------------------------------------------
variable "az_deploy_synapse" {
  description = "Do you want to deploy Resource Group. Valid options (true or false) ?"
  default = true
}

variable "az_synapse_name" {
  description = "Azure key vault name"
  default     = "synapsename"
}

variable "sy_resourcegroup_name" {
  description = "Azure resource group name"
  
}

variable "sy_location" {
  description = "Azure data factory location"
  
}
variable "sy_datalake_gen2_id" {
  description = "Azure Storage data lake gen2 filesystem id"
  
}

variable "sy_SQL_Admin_name" {
  description = "Azure Synapse sql administrator login Name. name may only contain alphanumeric characters and dashes"
  
}
variable "sy_SQL_Admin_pwd" {
  description = "Azure Synapse sql administrator password"
  
}

variable "sy_workspace_admin01_name" {
  description = "Azure Synapse sql administrator login Name"
  
}

/*
#---------------------------------------------------------
# Azure Synaps Secret key
#----------------------------------------------------------

variable "sy_keyvault_keyname" {
  description = "Azure Synaps key vault key name"
  //default     = "synaps_keyname"
}

variable "sy_keyvault01_id" {
  description = "Key Vault id to store Synaps keys"
  
}

variable "sy_customer_managed_keyname" {
  description = "Azure Synaps customer manager key name"
  //default     = "synaps_cust_mange_keyname"
}

variable "sy_generate_key01_name" {
  description = "Azure Synaps key vault key name. name may only contain alphanumeric characters and dashes"
  //default     = "sy-gen-keyname"
}
*/

#---------------------------------------------------------
# Create Tag for Synapse
#----------------------------------------------------------
variable "sy_tags" {
  description = "Tag Azure Synapse details"
  type        = map(string)
  default     = {}
}
#---------------------------------------------------------
# Create Synapse alert
#----------------------------------------------------------
      variable "sy_alert_email01"{
        default = "support@sy.com"
      }
      variable "sy_alert_email02" {
        default = "support@sy.com"
      }
       