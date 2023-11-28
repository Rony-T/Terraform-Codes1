#+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
# Windows Virutal Machine - Local Declarations
#+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+

locals {
  locals_vm_name              = lower("${var.vm_name}")
  locals_vm_resourcegroup_name = var.vm_resourcegroup_name
  locals_vm_location = var.vm_location
  default_tags                          = {}
  locals_vm_tags                        = merge({ "Windows Virutal Machine" = local.locals_vm_name}, var.vm_tags, )

}