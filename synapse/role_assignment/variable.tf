#---------------------------------------------------------
# Azure Synapse Role Assignment - Variables 
#----------------------------------------------------------
variable "sy_id" {
  description = "Azure key vault name"
  default     = "synapsename"
}

variable "sy_role_name" {
  description = "Apache Spark Administrator, Synapse Administrator, Synapse Artifact Publisher, Synapse Artifact User, Synapse Compute Operator, Synapse Contributor, Synapse Credential User, Synapse Linked Data Manager, Synapse SQL Administrator and Synapse User"

}

variable "sy_principal_ids" {
  //type        = list(string)
  description = "The ID of the principal that is to be assigned the role at the given scope. Can be User, Group or SPN."
}