#---------------------------------------------------------
# Azure Synapse Endpoint Variables 
#----------------------------------------------------------
variable "pep_sy_name" {
  description = "Synapse Manage Private Endpoint name"
  
}

variable "pep_sy_subresource_name" {
  description = "Specifies the sub resource name which the Synapse Private Endpoint is able to connect "
  
}



#Azure Synapse details

variable "sy_pep_name" {
  description = "Synapse Name"
  
}

variable "sy_pep_resourcegroup_name" {
  description = "Azure Synapse resource group name"
  
}

#Storage account details

variable "sy_pep_sa_name" {
  description = "Storage Account Name"
  
}

variable "sy_pep_sa_resourcegroup_name" {
  description = "Storage Account resource group name"
  
}

