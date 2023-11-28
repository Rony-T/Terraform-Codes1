#---------------------------------------------------------
# Azure Key Vault - Secret - Variables
#----------------------------------------------------------
variable "kv_secret_name" {
  description = "Azure key vault secret name"
 
}
/*
variable "kv_id" {
  type        = string
  description = "ID of the optional Key Vault. The module will store all relevant secrets inside this Key Vault and output the keys."
}
*/
variable "kv_id" {
  description = "ID of the optional Key Vault. The module will store all relevant secrets inside this Key Vault and output the keys."
  type        = string
}

