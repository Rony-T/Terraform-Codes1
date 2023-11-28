#---------------------------------------
# Virtual Machine Windows Data Disks - Variables
#---------------------------------------
variable "vm_data_disk_resourcegroup_name" {
  description = "Resource group where the the NSG will be deploy"

}

variable "vm_data_disk_location" {
  description = "Azure location where NSG will be deployed. To list all Azure locations , run 'az account list-locations -o table'"
}

variable "vm_data_disk_zone" {
description = "Specifies the Availability Zone in which this Managed Disk should be located."  
}

variable "vm_id" {
  description = "Azure virtual maching id to add data disk'"
}

variable "data_disks" {
  description = "Managed Data Disks for azure viratual machine"
  type = list(object({
    name                 = string
    storage_account_type = string
    disk_size_gb         = number
  }))
  default = []
}

variable "vm_data_disk_name" {
  description = "The name which should be used for the Internal Data Disk"
  default     = null
}


# Tag Data Disk

variable "vm_data_disk_tags" {
  description = "Tag Azure Resource Group details"
  type        = map(string)
  default     = {}
}