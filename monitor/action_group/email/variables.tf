#---------------------------------------
# Action Group within Azure Monitor - Variables
#---------------------------------------

variable "actiongroup_resourcegroup_name" {
  description = "Name of the resource group in which to create the Action Group instance"
  default     = ""
}

variable "actiongroup_name" {
  description = "Name of the Action Group"

}

variable "actiongroup_short_name" {
  description = "The short name of the action group. This will be used in SMS messages"

}

variable "actiongroup_emails_list" {
  description = "One or more email_receiver blocks as defined below, Example: `{ ml-devops = devops@contoso.com }`"
  type        = map(string)
  default     = {}
}

#Tag Action Group
variable "actiongroup_tags" {
  description = "Tags to add Action Group resources"
  type        = map(string)
  default     = {}
}
