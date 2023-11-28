#---------------------------------------------------------
# Azure Synapse Endpoint Variables 
#----------------------------------------------------------
variable "pep_sy_name" {
  description = "Synapse Manage Private Endpoint name"
  
}

variable "pep_sy_subresource_name" {
  description = "Specifies the sub resource name which the Synapse Private Endpoint is able to connect"
  
}

variable "pep_sy_target_resource_id" {
  description = "The ID of the Private Link Enabled Remote Resource which this Synapse Private Endpoint should be connected to"
  
}



#Azure Synapse details

variable "sy_pep_name" {
  description = "Synapse Name"
  
}
variable "sy_pep_resourcegroup_name" {
  description = "Azure Synapse resource group name"
  
}

