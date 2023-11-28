#------------------------------------------------------------------
# Azure Bastion Variables
#------------------------------------------------------------------
variable "bh_resourcegroup_name" {
  description = "Resource Gorup to deploy Bastion Host"
}

variable "bh_location" {
  description = "Azure Location to deploy Bastion Host"
}


variable "bh_name" {
  description = "Bastion Host Name"
  default     = ""
}

variable "bh_copy_paste_enable" {
  description = "Is Copy/Paste feature enabled for the Bastion Host?"
  default     = true
}

variable "bh_file_copy_enable" {
  description = "Is File Copy feature enabled for the Bastion Host. Only supported whne `sku` is `Standard`"
  default     = false
}

variable "bh_sku" {
  description = "The SKU of the Bastion Host. Accepted values are `Basic` and `Standard`"
  default     = "Standard"
}

variable "bh_ip_connect_enable" {
  description = "Is IP Connect feature enabled for the Bastion Host?"
  default     = false
}

variable "bh_scale_units" {
  description = "The number of scale units with which to provision the Bastion Host. Possible values are between `2` and `50`. `scale_units` only can be changed when `sku` is `Standard`. `scale_units` is always `2` when `sku` is `Basic`."
  default     = 2
}

variable "bh_shareable_link_enable" {
  description = "Is Shareable Link feature enabled for the Bastion Host. Only supported whne `sku` is `Standard`"
  default     = false
}

variable "bh_tunneling_enable" {
  description = "Is Tunneling feature enabled for the Bastion Host. Only supported whne `sku` is `Standard`"
  default     = false
}

# Tag Bastion Host
variable "bh_tags" {
  description = "A map of tags to add to all resources"
  type        = map(string)
  default     = {}
}

#IP Configuration Variables

variable "bh_subnet_id" {
  description = "Bastion Host Subnet id"

}

variable "bh_public_ip_id" {
  description = "Bastion Host Public IP Address"
  default     = ""
}