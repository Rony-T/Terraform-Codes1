#---------------------------------------------------------
# Azure Synapse Linked Service Variables 
#----------------------------------------------------------
variable "sy_linked_service_name" {
  description = "Synapse Link Service Name"
  
}

variable "sy_linked_service_authenticationType"{
    description = "Credentials ype"
}
variable "sy_linked_service_integration_runtime" {
  description = "Synapse Link Service Name"
  
}

variable "sy_linked_service_type" {
  description = "Synapse Link Service Name"
  
}

variable "sy_id" {
  description = "Azure Synapse id"
  
}

#Connection String details

variable "sy_connection_string" {
  description = "connection string "
  
}