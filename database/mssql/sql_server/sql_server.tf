#-------------------------------------------------------------
# SQL servers 
#-------------------------------------------------------------
resource "random_string" "unique" {
  length  = 6
  special = false
  upper   = false
}

resource "azurerm_mssql_server" "sql_primary" {
  name                                 = local.locals_sql_name //name of the SQL Server on which to create the database
  resource_group_name                  = var.sql_resourcegroup_name
  location                             = var.sql_primary_location
  version                              = var.sql_version
  public_network_access_enabled        = true
  outbound_network_restriction_enabled = false
  //allow_azure_services_access = true
  minimum_tls_version          = "1.2"
  administrator_login          = var.sql_admin_login
  administrator_login_password = var.sql_admin_password
  
  azuread_administrator {
    azuread_authentication_only  = true
    login_username = "zz_AAD_Azure_BlastAnalyticsCoE_Dev_Applications_Admins"//data.azuread_group.ad_group.display_name
    object_id      = "3a950ad5-463c-4d6d-a55f-31053e995995"//data.azuread_group.ad_group.object_id
  }

  tags = local.locals_sql_tags

  dynamic "identity" {
    for_each = var.sql_identity == true ? [1] : [0]
    content {
      type = "SystemAssigned"
    }
  }
}
