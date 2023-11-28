#-------------------------------------------------------------
# SQL servers - Variables
#-------------------------------------------------------------

variable "sql_resourcegroup_name" {
  description = "Resource group where the sql server resource will be deploy"
  type        = string
}

variable "sql_primary_location" {
  description = "location/region to deploy sel server resources. To get the list of all locations with table format from azure cli, run 'az account list-locations -o table'"
  type        = string
}

variable "sql_name" {
  description = "Azure sql server Name"
  type        = string
}

variable "sql_version" {
  description = "Azure sql server Version"

}

variable "sql_admin_login" {
  description = "Azure sql server Administrator login Name"
  type        = string
}

variable "sql_admin_password" {
  description = "Secret password in Keyvault"
 
}

variable "sql_ad_group_display_name" {
  description = "Display name for the group."
 
}

variable "sql_ad_group_object_id" {
  description = "Ad group object id"
 
}

# Tag SQL Server

variable "sql_tags" {
  description = "Tag SQL Server details"
  type        = map(string)
  default     = {}
}

variable "sql_identity" {
  description = "If you want your SQL Server to have an managed identity. Defaults to false."
  type        = bool
}
