#+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
# Windows Virutal Machine - Output
#+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+

output "out_windows_vm_id" {
  description = "The resource id's of all Windows Virtual Machine."
  value       = azurerm_windows_virtual_machine.windows_vm.id
}

output "out_windows_vm_name" {
  description = "The resource id's of all Windows Virtual Machine."
  value       = azurerm_windows_virtual_machine.windows_vm.name
}

output "out_windows_vm_zone" {
  description = "The Zone in which this Virtual Machine should be created. Conflicts with availability set and shouldn't use both"
  value       = azurerm_windows_virtual_machine.windows_vm.zone
}