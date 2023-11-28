#---------------------------------------
# Network Interface - Variables
#---------------------------------------
variable "nic_resourcegroup_name" {
  description = "Resource group where the the NSG will be deploy"

}

variable "nic_location" {
  description = "Azure location where NSG will be deployed. To list all Azure locations , run 'az account list-locations -o table'"
}


variable "nic_count" {
  description = "The number of Virtual Machines required."
  default     = 1
}

variable "nic_name" {
  description = "NSG name"
}

variable "nic_dns_servers" {
  description = "List of dns servers to use for network interface"
  
}

variable "nic_ip_forwarding_condition" {
  description = "Should IP Forwarding be enabled? Defaults to false"
  
}

variable "nic_accelerated_networking_condition" {
  description = "Should Accelerated Networking be enabled? Defaults to false."
  
}

variable "nic_internal_dns_name_label" {
  description = "The (relative) DNS Name used for internal communications between Virtual Machines in the same Virtual Network."
  
}

variable "nic_private_ip_allocation_type" {
  description = "The allocation method used for the Private IP Address. Possible values are Dynamic and Static."
  
}

variable "nic_private_ip" {
  description = "The Static IP Address which should be used. This is valid only when `private_ip_address_allocation` is set to `Static` "
  
}

#Public IP

variable "nic_enable_public_ip_address" {
  description = "Reference to a Public IP Address to associate with the NIC"
  default     = null
}

# Tag NIC

variable "nic_tags" {
  description = "Tag Azure Resource Group details"
  type        = map(string)
  default     = {}
}

variable "nic_id_existing" {
  description = "The resource id of existing network security group"
  default     = null
}

#Existing vNet and Subnet details

variable "ex_vnet_name" {
  description = "The resoruce id of existing Virtual network"
  
}

variable "ex_vnet_subnet_name" {
  description = "The resource id of existing subnet"

}

variable "ex_vnet_resourcegroup_name" {
  description = "Vnet resourcegroupname"

}