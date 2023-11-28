#---------------------------------------------------------
# Azure Storage Role Assignment - Variables 
#----------------------------------------------------------
variable "sa_role_definitation_name" {
  description = "Storage Blob Data Reader"
  
}

variable "sa_id" {
  description = "Apache Spark Administrator, Synapse Administrator, Synapse Artifact Publisher, Synapse Artifact User, Synapse Compute Operator, Synapse Contributor, Synapse Credential User, Synapse Linked Data Manager, Synapse SQL Administrator and Synapse User"

}

variable "sa_principal_id" {
  //type        = list(string)
  description = "The ID of the principal that is to be assigned the role at the given scope. Can be User, Group or SPN."
}