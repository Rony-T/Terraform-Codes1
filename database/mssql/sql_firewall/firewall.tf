#---------------------------------------------------------
# Azure SQL Firewall Rule
#---------------------------------------------------------

resource "azurerm_mssql_firewall_rule" "sql_fw_rule" {
  count            = var.sql_fw_rules_condition && length(var.sql_fw_rules) > 0 ? length(var.sql_fw_rules) : 0
  name             = element(var.sql_fw_rules, count.index).name
  server_id        = var.sql_server_id
  start_ip_address = element(var.sql_fw_rules, count.index).start_ip_address
  end_ip_address   = element(var.sql_fw_rules, count.index).end_ip_address
}

