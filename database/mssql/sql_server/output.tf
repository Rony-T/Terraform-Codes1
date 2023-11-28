output "out_mssql_primary_server_id" {
  description = "The primary Microsoft SQL Server ID"
  value       = azurerm_mssql_server.sql_primary.id
}

output "out_mssql_primary_server_fqdn" {
  description = "Fully qualified domain name of the primary Azure SQL Server"
  value       = azurerm_mssql_server.sql_primary.fully_qualified_domain_name
}

output "out_mssql_primary_server_name" {
  description = "Name of the primary Azure SQL Server"
  value       = azurerm_mssql_server.sql_primary.name
}

output "out_mssql_admin_password" {
  description = "SQL administrator password store in keyvault"
  value     = azurerm_mssql_server.sql_primary.administrator_login_password
  //azurerm_key_vault_secret.sql_admin_pwd.value
  sensitive = true
}

output "out_mssql_server_active_directory_login" {
  value = azurerm_mssql_server.sql_primary.azuread_administrator
}



