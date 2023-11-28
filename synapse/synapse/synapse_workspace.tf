#---------------------------------------------------------
# Azure Synapse Deployment
#----------------------------------------------------------

resource "azurerm_storage_data_lake_gen2_filesystem" "sy_adls" {
  name               = lower("${var.sy_name}-synapse")
  storage_account_id = var.sy_sa_id
}

resource "azurerm_synapse_workspace" "synapse_workspace01" {
  name                                 = lower(var.sy_name)
  resource_group_name                  = var.sy_resourcegroup_name
  location                             = var.sy_location
  storage_data_lake_gen2_filesystem_id = azurerm_storage_data_lake_gen2_filesystem.sy_adls.id //var.sy_datalake_gen2_id
  managed_virtual_network_enabled      = true
  sql_administrator_login              = var.sy_sql_admin_name
  sql_administrator_login_password     = var.sy_sql_admin_pwd
  tags                                 = merge({ "Synapse Name" = format("%s", var.sy_name) }, var.sy_tags)

  aad_admin {
    login     = var.sy_aad_group_login
    object_id = var.sy_aad_group_object_id 
    tenant_id = data.azurerm_client_config.current.tenant_id
  }

  identity {
    type = var.sy_identity
  }


}

# Azure Synapes Firewall

resource "azurerm_synapse_firewall_rule" "synapse_firewall" {
  depends_on           = [azurerm_synapse_workspace.synapse_workspace01]
  for_each             = { for mn, nh in local.sy_firewall_rules : mn => nh if mn != null }
  name                 = format(lower(replace(each.key, "/[[:^alnum:]]/", "")))
  synapse_workspace_id = azurerm_synapse_workspace.synapse_workspace01.id
  start_ip_address     = each.value.security_rule.start_ip_address
  end_ip_address       = each.value.security_rule.end_ip_address
}
