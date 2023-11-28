#---------------------------------------
# Virtual Machine Windows Data Disks
#---------------------------------------
resource "azurerm_managed_disk" "data_disk" {
  for_each             = local.vm_data_disks
  name                 = "${var.vm_data_disk_name}_DataDisk_${each.value.data_disk.name}"
  resource_group_name  = var.vm_data_disk_resourcegroup_name
  location             = var.vm_data_disk_location
  storage_account_type = lookup(each.value.data_disk, "storage_account_type", "StandardSSD_LRS")
  create_option        = "Empty"
  disk_size_gb         = each.value.data_disk.disk_size_gb
  zone                 = var.vm_data_disk_zone
  tags                 = merge({ "Managed Disk" = "${var.vm_data_disk_name}_DataDisk" }, var.vm_data_disk_tags, )

  lifecycle {
    ignore_changes = [
      tags,
    ]
  }
}

resource "azurerm_virtual_machine_data_disk_attachment" "data_disk" {
  for_each           = local.vm_data_disks
  managed_disk_id    = azurerm_managed_disk.data_disk[each.key].id
  virtual_machine_id = var.vm_id
  lun                = each.value.idx
  caching            = "ReadWrite"
}