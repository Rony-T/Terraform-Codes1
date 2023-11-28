#--------------------------------------
# Storage Container Variables
#--------------------------------------
variable "container_sa_name" {
  description = "Storage Account for Container"

}
variable "container_list" {
  description = "List of containers to create and their access levels."
  type        = list(object({ name = string, access_type = string }))
  default     = []
}
