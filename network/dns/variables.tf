#-------------------------------------------------------------
# SQL servers - Variables
#-------------------------------------------------------------

variable "dns_resourcegroup_name" {
  description = "Resource group where the DNS resource will be deploy"
type = string
}

variable "dns_a_record_name" {
  description = "Private DNS A record name"
type = string
}

variable "dsn_private_endpoint_ipaddress" {
  description = "Private Endpoing IPAddress to create A recored"
  type = string

}

variable "dns_existing_vnet_id" {
  description = "The resource id of existing vNet"
  type = string
}
/*
variable "dns_vnet_name" {
  description = "The resource id of new vNet"
  type = string
}
*/

# Tag DSN
variable "dns_tags" {
  description = "Tag DNS details"
  type        = map(string)
  default     = {}
}

#Existing resource information
variable "dns_vnet_id" {
  description = "The resoruce id of existing Virtual network"

}


variable "dns_existing_private_dns_zone" {
  description = "Name of the existing private DNS zone"

}
