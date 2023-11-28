#---------------------------------------------------------
# Azure Synapse SFTP Linked Service Variables 
#----------------------------------------------------------
variable "sftp_linked_service_name" {
  description = "sftp Link Service Name"
  
}

variable "sy_id" {
  description = "Azure Synapse id"
  
}

variable "sftp_host" {
  description = "The hostname or IP address of the SFTP server"
  
}


variable "sftp_port" {
  description = " The port number to use for the SFTP connection"
}

variable "sftp_userName" {
  description = "The username to use for authentication with the SFTP server"
  
}
variable "sftp_password" {
  description = " The password to use for authentication with the SFTP server."
  default = "22"  
}

variable "sftp_enableSsl" {
  description = " Whether to use SSL/TLS for the SFTP connection"
}

variable "sftp_hostKey" {
  description = " The host key for the SFTP server"
}

variable "sy_linked_service_userName" {
  description = "SFTP username"
  
}
#Keyvault details

variable "sftp_privateKeyContent" {
  description = " The content of the private key to use for authentication with the SFTP server "
  
}

variable "sftp_passphrase" {
  description = "The passphrase for the private key"
  
}

variable "sy_linked_service_secretName" {
  description = "sftp_skipHostKeyValidation: Whether to skip host key validation for the SFTP server "
  
}

