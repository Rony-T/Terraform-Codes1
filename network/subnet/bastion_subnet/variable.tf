#-------------------------------------
# Subnet Variables
#-------------------------------------

variable "subnet_resourcegroup_name" {
  description = "Resource group where the the vNet resource will be deploy"

}

variable "subnet_vnet_name" {
  description = "vnet name to deploy subnet."
  type        = string
  
}


variable "subnet_address_prefixes" {
  description = "vnet name to deploy subnet."
   
}

