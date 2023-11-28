#----------------------------------------------------------------------
# Virtual Machine Windows Log Analytics Worksapce Agent - Installation
#----------------------------------------------------------------------

resource "azurerm_virtual_machine_extension" "law_agent_extension" {
  
  name                       = local.locals_law_agent_extension_name
  virtual_machine_id         = var.law_agent_vm_id
  publisher                  = var.law_agent_publisher
  type                       = var.law_agent_type
  type_handler_version       = var.law_agent_type_handler_version  
  auto_upgrade_minor_version = var.law_agent_type_auto_upgrade
  tags = local.locals_law_agent_extension_tags
  settings = <<SETTINGS
    {
      "workspaceId": "${var.law_agent_workspaceId}"
    }
  SETTINGS

  protected_settings = <<PROTECTED_SETTINGS
    {
    "workspaceKey": "${var.law_agent_primary_shared_key}"
    }
  PROTECTED_SETTINGS
}
