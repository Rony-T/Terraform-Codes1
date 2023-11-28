#---------------------------------------------------------
# Azure Synapse Linked Service Variables 
#----------------------------------------------------------
variable "sy_linked_service_name" {
  description = "Synapse Link Service Name"
  
}

variable "sy_id" {
  description = "Azure Synapse id"
  
}

variable "sy_linked_service_type" {
  description = "Synapse Link Service Name"
  
}


variable "sy_linked_service_integration_runtime" {
  description = "Synapse Link Service Name"
  
}

#Connection String details

variable "sy_linked_service_sftp_hostname" {
  description = "SFTP host FDQN"
  
}
variable "sy_linked_service_port" {
  description = "SFTP port"
  default = "22"
  
}

variable "sy_linked_service_skipHostKeyValidation" {
  description = "true or false "
  
}

variable "sy_linked_service_authenticationType" {
  description = "SFTP authentication Type"
  default = "Basic"
  
}

variable "sy_linked_service_userName" {
  description = "SFTP username"
  
}
#Keyvault details

variable "sy_linked_service_secret_type" {
  description = "connection string "
  
}

variable "sy_linked_service_secret_keyvault_name" {
  description = "Keyvault Link Service name"
  
}

variable "sy_linked_service_secretName" {
  description = "connection string "
  
}

