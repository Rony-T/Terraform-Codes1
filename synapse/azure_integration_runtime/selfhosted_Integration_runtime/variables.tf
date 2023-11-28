#---------------------------------------------------------
# Azure Synapse - Self-hosted Integration Runtime - Variables 
#----------------------------------------------------------

variable "sy_ir_self_hosted_name" {
  description = "The name which should be used for this Synapse Self-hosted Integration Runtime"

}
# Azure Synapse Details
variable "sy_ir_name" {
  description = "Azure Synapse Name"

}

variable "sy_ir_resourcegroup_name" {
  description = "Azure Synapse Resource Group Name"

}

#Key Vault Details
variable "sy_ir_kv_name" {
  description = "Key Vault name"

}

variable "sy_ir_kv_resourcegroup_name" {
  description = "Key Vault resource group"

}
