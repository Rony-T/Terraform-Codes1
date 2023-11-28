#+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
# Windows Virutal Machine - Variable
#+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
variable "vm_resourcegroup_name" {
  description = "Resource group where the Virtaul Machine resource resource will be deploy"
  default     = ""
}

variable "vm_location" {
  description = "location/region to deploy Virtaul Machine resources. To get the list of all locations with table format from azure cli, run 'az account list-locations -o table"
  default     = ""
}


variable "vm_name" {
  description = "Virtual Machine name"
 
}

variable "vm_os" {
  description = "Operating system image to deploy Virtual Machine. Valid options `windows` and `linux`"
  
}
variable "vm_instances_count" {
  description = "Number of Virtual Machines required."
}

variable "vm_size" {
  description = "SKU which should be used for this Virtual Machine"

}
variable "vm_admin_username" {
  description = "User Name of the local administrator used for the Virtual Machine"
  
}

variable "vm_disable_password_authentication" {
  description = "Should Password Authentication be disabled on this Virtual Machine? Defaults to true."
  default     = false
}

variable "vm_admin_password" {
  description = "Secret password in Keyvault"
 
}

variable "vm_source_image_id" {
  description = "ID of the Image which this Virtual Machine should be created from"
  default     = null
}

variable "vm_dedicated_host_id" {
  description = "ID of a Dedicated Host where this machine should be run on."
  default     = null
}

variable "vm_custom_data" {
  description = "The Base64-Encoded Custom Data which should be used for this Virtual Machine"
  default     = null
}

variable "vm_enable_automatic_updates" {
  description = "Specifies if Automatic Updates are Enabled for the Windows Virtual Machine."
  default     = false
}

variable "vm_availability_set_condition" {
  description = "Manages an Availability Set for Virtual Machines."
  default     = false
}

variable "vm_encryption_at_host_condition" {
  description = " Should all of the disks (including the temp disk) attached to this Virtual Machine be encrypted by enabling Encryption at Host?"
  default     = false
}

variable "vm_proximity_placement_group_condition" {
  description = "Manages a proximity placement group for virtual machines, virtual machine scale sets and availability sets."
  default     = false
}

variable "vm_availability_zone" {
  description = "The Zone in which this Virtual Machine should be created. Conflicts with availability set and shouldn't use both"
  default     = null
}

variable "vm_patch_mode" {
  description = "Specifies the mode of in-guest patching to this Windows Virtual Machine. Possible values are `Manual`, `AutomaticByOS` and `AutomaticByPlatform`"
}

variable "vm_license_type" {
  description = "Specifies the type of on-premise license which should be used for this Virtual Machine. Possible values are None, Windows_Client and Windows_Server."
  default     = "None"
}

variable "vm_time_zone" {
  description = "Specifies the Time Zone which should be used by the Virtual Machine"
  default     = null
}

#Tag Virtual Machine
variable "vm_tags" {
  description = "Tags to add Virtual Machine resources"
  type        = map(string)
  default     = {}
}
variable "custom_image" {
  description = "Provide the custom image to this module if the default variants are not sufficient"
  type = map(object({
    publisher = string
    offer     = string
    sku       = string
    version   = string
  }))
  default = null
}

#Linux distribution

variable "windows_distribution_list" {
  description = "Pre-defined Azure Windows VM images list"
  type = map(object({
    publisher = string
    offer     = string
    sku       = string
    version   = string
  }))
}
variable "windows_distribution_name" {
 
  description = "Variable to pick an OS flavour for Windows based VM. Possible values include: winserver, wincore, winsql"
}

variable "vm_os_disk_storage_account_type" {
  description = "The Type of Storage Account which should back this the Internal OS Disk. Possible values include Standard_LRS, StandardSSD_LRS and Premium_LRS."

}

variable "vm_os_disk_caching" {
  description = "The Type of Caching which should be used for the Internal OS Disk. Possible values are `None`, `ReadOnly` and `ReadWrite`"

}

variable "vm_os_disk_encryption_set_id" {
  description = "The ID of the Disk Encryption Set which should be used to Encrypt this OS Disk. The Disk Encryption Set must have the `Reader` Role Assignment scoped on the Key Vault - in addition to an Access Policy to the Key Vault"
}

variable "vm_os_disk_size_gb" {
  description = "The Size of the Internal OS Disk in GB, if you wish to vary from the size used in the image this Virtual Machine is sourced from."
}

variable "vm_os_disk_write_accelerator_condition" {
  description = "Should Write Accelerator be Enabled for this OS Disk? This requires that the `storage_account_type` is set to `Premium_LRS` and that `caching` is set to `None`."
  default     = false
}


variable "vm_ultra_ssd_data_disk_condition" {
  description = "Should the capacity to enable Data Disks of the UltraSSD_LRS storage account type be supported on this Virtual Machine"
  default     = false
}

variable "vm_managed_identity_type" {
  description = "The type of Managed Identity which should be assigned to the Linux Virtual Machine. Possible values are `SystemAssigned`, `UserAssigned` and `SystemAssigned, UserAssigned`"
  default     = null
}

variable "vm_managed_identity_ids" {
  description = "A list of User Managed Identity ID's which should be assigned to the Linux Virtual Machine."
  default     = null
}

variable "vm_boot_diagnostics_condition" {
  description = "Should the boot diagnostics enabled?"
  default     = false
}

variable "winrm_protocol" {
  description = "Specifies the protocol of winrm listener. Possible values are `Http` or `Https`"
  default     = null
}

variable "additional_unattend_content" {
  description = "The XML formatted content that is added to the unattend.xml file for the specified path and component."
  default     = null
}

variable "additional_unattend_content_setting" {
  description = "The name of the setting to which the content applies. Possible values are `AutoLogon` and `FirstLogonCommands`"
  default     = null
}


# Network Interface - Variables 

variable "nic_count" {
  description = "The number of Virtual Machines required."
  default     = 1
}

variable "nic_resourcegroup_name" {
  description = "Resource group where the Network Interface resource resource will be deploy"
  default     = ""
}

variable "nic_location" {
  description = "location/region to deploy Network Interface  resources. To get the list of all locations with table format from azure cli, run 'az account list-locations -o table"
  default     = ""
}

variable "nic_dns_servers" {
  description = "List of dns servers to use for network interface"
  default     = []
}

variable "nic_ip_forwarding_condition" {
  description = "Should IP Forwarding be enabled? Defaults to false"
  default     = false
}

variable "nic_accelerated_networking_condition" {
  description = "Should Accelerated Networking be enabled? Defaults to false."
  default     = false
}

variable "nic_internal_dns_name_label" {
  description = "The (relative) DNS Name used for internal communications between Virtual Machines in the same Virtual Network."
  default     = null
}

#Tag Network Interface
variable "nic_tags" {
  description = "Add Tags to Network Interface"
  type        = map(string)
  default     = {}
}

# Public IP Address
variable "nic_public_ip_condition" {
  description = "Reference to a Public IP Address to associate with the NIC"
  default     = null
}

variable "nic_private_ip_allocation_type" {
  description = "The allocation method used for the Private IP Address. Possible values are Dynamic and Static."
  default     = "Dynamic"
}

variable "nic_private_ip" {
  description = "The Static IP Address which should be used. This is valid only when `nic_private_ip_allocation` is set to `Static` "
  default     = null
}

variable "nic_public_ip" {
  description = "The Static IP Address which should be used. This is valid only when `nic_public_ip_condition ` is set to `Static` "
  default     = null
}

# Associate NSG to Network Interface 

variable "vm_nsg_id" {
  description = "Netwrok Interface NSG id"
  
}

variable "vm_nic_id" {
  description = "Netwrok Interface NSG id"
  
}
