#--------------------------------------------------------------------
# MS SQL Database Output
#--------------------------------------------------------------------

output "out_mssql_server_id" {
  value = azurerm_mssql_database.mssql_db.server_id
}

output "out_mssql_server_database_id" {
  value = azurerm_mssql_database.mssql_db.id
}

output "out_mssql_server_database_name" {
  value = azurerm_mssql_database.mssql_db.name
}


