#--------------------------------------
# Resource Group Properties 
#--------------------------------------
variable "rg_deploy_condition" {
  description = "Do you want to deploy Resource Group. Valid options (true or false) ?"
}

variable "rg_name" {
  description = "Resource Group Name where Azure resources will be deployed"
}

variable "rg_location" {
  description = "Azure location where resources will be deployed. To list all Azure locations , run 'az account list-locations -o table'"
}


# Create Tag for Resource Group

variable "rg_tags" {
  description = "Tag Azure Resource Group details"
  type        = map(string)
  default     = {}
}

