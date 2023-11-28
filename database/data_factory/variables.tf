#--------------------------------------
# Resource Group Properties 
#--------------------------------------
variable "adf_resourcegroup_name" {
   description = "Name of the Resource Group where Azure Data Factory will be created."
}

variable "adf_location" {

  description = "Azure location where resources will be deployed. To list all Azure locations , run 'az account list-locations -o table'"
}

#-------------------------------
# Azure Data Factory
#-------------------------------
variable "adf_name" {
  description = "Data Factory name"

}
#-------------------------------
# Azure Data Factory connection to Data Lake Gen 2
#-------------------------------

variable "adf_service_principal_client_secret" {
  description = "Data Factory name"

}

variable "adf_sa_primary_dfs_endpoint" {
  description = "Data Factory name"

}

#-------------------------------
# Azure Data Factory connection to Keyvault
#-------------------------------

variable "adf_kv_id" {
  description = "Azure Keyvault id"

}

