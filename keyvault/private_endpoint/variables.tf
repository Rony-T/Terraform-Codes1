variable "kv_name" {
  description = "Name of the Keyvault"
  type = string
}

variable "pep_kv_location" {
  description = "Location of the private endpoint"
  type = string
}


variable "pep_kv_resource_group_name" {
  description = "Resource group name"
  type = string
}


variable "pep_kv_existing_subnet_id" {
  description = "Existing subnet id"
  type = string
}

variable "pep_kv_existing_subnet_name" {
  description = "Existing subnet name"
  type = string
}

variable "pep_kv_tags" {
  description = "Tag Keyvault details"
  type        = map(string)
  default     = {}
}

variable "pep_kv_id" {
  description = "object id of the keyvault"
  type = string
}
