#------------------------------------------------------------------
# Azure Public IP Address Variables
#------------------------------------------------------------------

variable "public_ip_resourcegroup_name" {
  description = "Resource Gorup to deploy Public IP"
}

variable "public_ip_location" {
  description = "Azure Location to deploy Public IP"
}

variable "public_ip_name" {
  description = "Public IP Name"
}


variable "public_ip_allocation_method" {
  description = "Defines the allocation method for this IP address. Possible values are Static or Dynamic"

}

variable "public_ip_sku" {
  description = "The SKU of the Public IP. Accepted values are Basic and Standard. Defaults to Basic"

}

variable "public_ip_domain_name_label" {
  description = "Label for the Domain Name. Will be used to make up the FQDN. If a domain name label is specified, an A DNS record is created for the public IP in the Microsoft Azure DNS system"

}

variable "public_ip_tags" {
  description = "A map of tags to add to all resources"
  type        = map(string)
  default     = {}
}