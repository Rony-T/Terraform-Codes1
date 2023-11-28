#+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
# Windows Virutal Machine - Deployment
#+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
resource "azurerm_windows_virtual_machine" "windows_vm" {
  name                = local.locals_vm_name
  computer_name       = local.locals_vm_name
  resource_group_name = local.locals_vm_resourcegroup_name
  location            = local.locals_vm_location
  size                = var.vm_size
  admin_username      = var.vm_admin_username
  admin_password      = var.vm_admin_password
  network_interface_ids = [
    var.vm_nic_id,
  ]
  source_image_id            = var.vm_source_image_id != null ? var.vm_source_image_id : null
  provision_vm_agent         = true
  allow_extension_operations = true
  dedicated_host_id          = var.vm_dedicated_host_id
  custom_data                = var.vm_custom_data != null ? var.vm_custom_data : null
  enable_automatic_updates   = var.vm_enable_automatic_updates
  license_type               = var.vm_license_type
  patch_mode                 = var.vm_patch_mode
  encryption_at_host_enabled = var.vm_encryption_at_host_condition
  zone                       = var.vm_availability_zone == null ? null : var.vm_availability_zone
  timezone = var.vm_time_zone
  tags     = merge({ "virtualmachine" = "${var.vm_name}" }, var.vm_tags, )
  dynamic "source_image_reference" {
    for_each = var.vm_source_image_id != null ? [] : [1]
    content {
      publisher = var.custom_image != null ? var.custom_image["publisher"] : var.windows_distribution_list[lower(var.windows_distribution_name)]["publisher"]
      offer     = var.custom_image != null ? var.custom_image["offer"] : var.windows_distribution_list[lower(var.windows_distribution_name)]["offer"]
      sku       = var.custom_image != null ? var.custom_image["sku"] : var.windows_distribution_list[lower(var.windows_distribution_name)]["sku"]
      version   = var.custom_image != null ? var.custom_image["version"] : var.windows_distribution_list[lower(var.windows_distribution_name)]["version"]
    }
  }
  os_disk {
    storage_account_type      = var.vm_os_disk_storage_account_type
    caching                   = var.vm_os_disk_caching
    disk_encryption_set_id    = var.vm_os_disk_encryption_set_id
    disk_size_gb              = var.vm_os_disk_size_gb
    write_accelerator_enabled = var.vm_os_disk_write_accelerator_condition
    name                      = "${var.vm_name}-os_disk"
  }

  additional_capabilities {
    ultra_ssd_enabled = var.vm_ultra_ssd_data_disk_condition
  }

  dynamic "identity" {
    for_each = var.vm_managed_identity_type != null ? [1] : []
    content {
      type         = var.vm_managed_identity_type
      identity_ids = var.vm_managed_identity_type == "UserAssigned" || var.vm_managed_identity_type == "SystemAssigned, UserAssigned" ? var.vm_managed_identity_ids : null
    }
  }
  dynamic "winrm_listener" {
    for_each = var.winrm_protocol != null ? [1] : []
    content {
      protocol        = var.winrm_protocol
      certificate_url = var.winrm_protocol == "Https" ? var.key_vault_certificate_secret_url : null
    }
  }

  dynamic "additional_unattend_content" {
    for_each = var.additional_unattend_content != null ? [1] : []
    content {
      content = var.additional_unattend_content
      setting = var.additional_unattend_content_setting
    }
  }

  dynamic "boot_diagnostics" {
    for_each = var.vm_boot_diagnostics_condition ? [1] : []
    content {
      storage_account_uri = var.vm_storage_account_name != null ? data.azurerm_storage_account.storeacc.0.primary_blob_endpoint : var.storage_account_uri
    }
  }

  lifecycle {
    ignore_changes = [
      tags,
    ]
  }
}
