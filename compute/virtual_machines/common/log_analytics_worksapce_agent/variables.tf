#-------------------------------------------------------------------
# Virtual Machine Windows Log Analytics Worksapce Agent - Variables
#-------------------------------------------------------------------
variable "law_agent_extension_name" {
  description = "Name of the virtual machine extension peering"
}

variable "law_agent_vm_id" {
  description = "ID of the Virtual Machine"
}

variable "law_agent_publisher" {
  description = "Publisher of the extension, available publishers can be found by using the Azure CLI"
}

variable "law_agent_type" {
  description = "Type of extension, available types for a publisher can be found using the Azure CLI"
}

variable "law_agent_type_handler_version" {
  description = "Specifies the version of the extension to use, available versions can be found using the Azure CLI"
}

variable "law_agent_type_auto_upgrade" {
  description = "Should the Extension be automatically updated whenever the Publisher releases a new version of this VM Extension? Defaults to false"
default = false
}

variable "law_agent_workspaceId" {
  description = "Azure log analytics worksapce id"
}

variable "law_agent_primary_shared_key" {
  description = "Specifies the name of the network security group"
}

# Tag virtual machine extension

variable "law_agent_extension_tags" {
  description = "Tag Azure Resource Group details"
  type        = map(string)
  default     = {}
}
