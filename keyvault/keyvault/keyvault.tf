#---------------------------------------------------------
# Azure Key Vault Deployment 
#----------------------------------------------------------



resource "azurerm_key_vault" "keyvault" {

  name                        = lower("${var.kv_name}")
  resource_group_name         = local.locals_resourcegroup_name
  location                    = local.locals_location  
  tenant_id                   = data.azurerm_client_config.current.tenant_id
  sku_name                    = var.kv_sku
  enabled_for_deployment      = var.kv_enabled_for_deployment
  enabled_for_disk_encryption = var.kv_enabled_for_disk_encryption
  enable_rbac_authorization    = var.kv_enable_rbac_authorization
  soft_delete_retention_days  = 7
  purge_protection_enabled    = var.kv_pure_protection_enabled
  tags                        = merge({ "Key Vault Name" = format("%s", var.kv_name) }, var.kv_tags)
network_acls {
    default_action = "Allow"
    bypass         = "AzureServices"
    ip_rules= ["0.0.0.0/0"]
     }
    

  access_policy {
    object_id = data.azurerm_client_config.current.object_id
    tenant_id = data.azurerm_client_config.current.tenant_id

    certificate_permissions = [
      "Create",
      "Delete",
      "DeleteIssuers",
      "Get",
      "GetIssuers",
      "Import",
      "List",
      "ListIssuers",
      "ManageContacts",
      "ManageIssuers",
      "Purge",
      "SetIssuers",
      "Update"
    ]

    key_permissions = [
      "Backup",
      "Create",
      "Decrypt",
      "Delete",
      "Encrypt",
      "Get",
      "Import",
      "List",
      "Purge",
      "Recover",
      "Restore",
      "Sign",
      "UnwrapKey",
      "Update",
      "Verify",
      "WrapKey"
    ]

    secret_permissions = [
      "Backup",
      "Delete",
      "Get",
      "List",
      "Purge",
      "Recover",
      "Restore",
      "Restore",
      "Set"
    ]
  }


}

resource "null_resource" "previous" {}

resource "time_sleep" "wait_120_seconds" {
  depends_on = [azurerm_key_vault.keyvault]

  create_duration = "120s"
}

