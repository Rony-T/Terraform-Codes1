
#---------------------------------------
# Network Security Group - Variables
#---------------------------------------
variable "nsg_resourcegroup_name" {
  description = "Resource group where the the NSG will be deploy"

}

variable "nsg_location" {
  description = "Azure location where NSG will be deployed. To list all Azure locations , run 'az account list-locations -o table'"
}

variable "nsg_name" {
  description = "NSG name"
}

# Tag NSG

variable "nsg_tags" {
  description = "Tag Azure Resource Group details"
  type        = map(string)
  default     = {}
}

variable "nsg_id_existing" {
  description = "The resource id of existing network security group"
  default     = null
}


variable "nsg_rules" {
  description = "List of network rules to apply to network interface."
  default     = []
}
/*
variable "nsg_outbound_rules" {
  description = "List of network rules to apply to network interface."
  default     = []
}
*/

