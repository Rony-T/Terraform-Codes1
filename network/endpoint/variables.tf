#Private Endpoint Variables
variable "pep_name" {
  description = "Private Endpoint Name"

}

variable "pep_resourcegroup_name" {
  description = "Azure resource group name"

}

variable "pep_location" {
  description = "Azure resource Location"

}

variable "pep_connection_resource_id" {
  description = "Private endpoint connection soruce id"

}

variable "pep_subresource_names" {
  description = "valid options dfs, sqlServer, managedInstance, blob, file, queue, table, web, sites, vault"

}


# Tag for private Endpoint

variable "pep_tags" {
  description = "Tag Endpoint details"
  type        = map(string)
  default     = {}
}

#Network details
variable "ex_vnet_name" {
  description = "The resoruce id of existing Virtual network"

}

variable "ex_vnet_subnet_name" {
  description = "The resource id of existing subnet"

}

variable "ex_vnet_resourcegroup_name" {
  description = "Vnet resourcegroupname"

}
